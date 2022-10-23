console.log('this is assets/js/random.js');

{{- $urls := slice }}
{{- range site.RegularPages.ByTitle }}
  {{- $urls = $urls | append .RelPermalink }}
{{- end -}}

const urls = {{ jsonify $urls }};
let randomURL = urls[Math.floor(Math.random() * {{ len $urls }})];

// Make sure we get a different random URL each time.
while (randomURL == sessionStorage.getItem("randomURL")) {
  randomURL = urls[Math.floor(Math.random() * {{ len $urls }})];
}
sessionStorage.setItem("randomURL", randomURL);

// Append a link to the random URL at the bottom of each page.
let a = document.createElement('a');
const linkText = document.createTextNode("Random");
a.appendChild(linkText);
a.href = randomURL;
document.body.appendChild(a);
