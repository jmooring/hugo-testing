package main

const (
	ImageRegistry string = "registry.access.redhat.com"

	RedhatMinimalImageRepository string = "ubi9-minimal"
	RedhatMinimalImageTag        string = "9.3-1552"
	RedhatMinimalImageDigest     string = "sha256:582e18f13291d7c686ec4e6e92d20b24c62ae0fc72767c46f30a69b1a6198055"
)

type HugoGithubIssue12314 struct{}

type HugoGithubIssue12314Builder struct {
	*Container
}

func (m *HugoGithubIssue12314) Builder(
	directory *Directory,
) *HugoGithubIssue12314Builder {
	builder := HugoGithubIssue12314Builder{}

	sources := dag.Git("https://github.com/gohugoio/hugo.git").Branch("pull/12318/head").Tree()

	builder.Container = dag.Container().
		From(ImageRegistry+"/"+RedhatMinimalImageRepository+":"+RedhatMinimalImageTag+"@"+RedhatMinimalImageDigest).
		WithEntrypoint([]string{"sh", "-c"}).
		WithExec([]string{"microdnf install --nodocs --setopt install_weak_deps=0 --assumeyes go git ruby-devel redhat-rpm-config rubygem-bundler g++ && microdnf clean all"}).
		WithMountedDirectory("/usr/src/hugo", sources).
		WithExec([]string{"cd /usr/src/hugo && GOBIN=/usr/local/bin go install"}).
		WithWorkdir("/home").
		WithMountedDirectory(".", directory).
		WithExec([]string{"bundle install"}).
		WithEntrypoint([]string{"hugo"}).
		WithoutDefaultArgs()

	return &builder
}

type HugoGithubIssue12314Build struct {
	Directory *Directory
}

func (builder *HugoGithubIssue12314Builder) Build(
	// +optional
	args []string,
) *HugoGithubIssue12314Build {
	build := &HugoGithubIssue12314Build{
		Directory: builder.WithExec(args).Directory("public"),
	}

	return build
}

func (builder *HugoGithubIssue12314Builder) Server() *Service {
	return builder.WithExec([]string{"server", "--bind", "0.0.0.0"}).WithExposedPort(1313).AsService()
}
