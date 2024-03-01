---
type: post
date: "2023-11-19T10:17:01+01:00"
title: "3.0.0"
tags:
    - Comentario
    - web
    - software
    - development
    - release
    - Go
    - Angular
image: "https://res.cloudinary.com/yktoo/image/upload/v1700385664/blog/seyqgwcnbnqk44r30lb6.png"
series: comentario
software: comentario
---

Na zeven maanden ontwikkeling, **300** commits en twee prerelease-versies ([1](en;0877), [2](en;0879)) is de release [Comentario 3.0.0](https://gitlab.com/comentario/comentario/-/releases/v3.0.0) eindelijk beschikbaar.

[Comentario](/software/comentario) is een snelle en krachtige opensource comment-server voor webpagina's, geschreven in Go.

## Wat is er nieuw?

<!--more-->

Vergeleken met de laatste [pre-release](en;0879):

* Voor het eerst in zijn geschiedenis heeft het product bijna 100% end-to-end-testdekking, wat garandeert dat elke wijziging regressievrij is.
* Talrijke bugfixes als gevolg van het vorige item.
* Het Dashboard is opnieuw ontworpen: *views* en *comments* zijn nu twee aparte grafieken, pagina's en gebruikers kregen nieuwe achtergrond-grafieken:
  {{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1700385664/blog/seyqgwcnbnqk44r30lb6.png" "Het vernieuwde Comentario Dashboard." "border shadow" >}}
* Ondersteuning voor de verouderde PostgreSQL **9.x** is verwijderd, maar toegevoegd voor de versie **16**.
* Domein eigenschappen: protocol-dropdown toegevoegd voor de keuze tussen `http://` ↔ `https://`.
* Profiel: website URL toegevoegd.
* Static config: PostgreSQL-versie en de backendserver-tijd toegevoegd.
* Disqus import: afhandeling van "semi-anonieme" gebruikers is mogelijk gemaakt.
* Embed: comment-tijdstip is nu een permalink naar die comment.
* Embed: Markdown-helppopup is vervangen door een [doclink](https://docs.comentario.app/en/kb/markdown/).

Wijzigingen ten opzichte van de prerelease-versies (vanaf **2.3.1**):

* Een geheel nieuw databasemodel.
* Domein [gebruikersrollen](https://docs.comentario.app/en/kb/permissions/roles/).
* Systembreed [superuser](https://docs.comentario.app/en/kb/permissions/superuser/)-privilege.
* [Statische](https://docs.comentario.app/en/configuration/backend/static/) en [dynamische](https://docs.comentario.app/en/configuration/backend/dynamic/) Comentario configuraties.
* User verbanning.
* Uitgebreide [moderatie-instellingen](https://docs.comentario.app/en/configuration/frontend/domain/moderation/) (het vlaggen van comments met een link of een afbeelding, of geschreven door een onlangs geregistreerde gebruiker).
* [Extensies](https://docs.comentario.app/en/configuration/frontend/domain/extensions/), die comments voor spam of toxisch taalgebruik controleren ([Akismet](https://docs.comentario.app/en/configuration/frontend/domain/extensions/akismet/), [APILayer SpamChecker](https://docs.comentario.app/en/configuration/frontend/domain/extensions/api-layer-spam-checker/), [Perspective](https://docs.comentario.app/en/configuration/frontend/domain/extensions/perspective/)).
* Veel uitgebreidere view-statistieken (wordt alleen verzameld op dit moment).
* Domeinbrede pagina- en commentlijst.
* Uploaden van gebruikersavatars.
* Login via Facebook.
* Non-interactieve [Single Sign-On](https://docs.comentario.app/en/configuration/frontend/domain/authentication/sso/).
* Afbeeldingen in comments.
* Instelling om links in comments te verbieden.
* Instelling voor de voorpagina-content.
* Binaire `.deb`- en `.rpm`-[pakketten](https://docs.comentario.app/en/installation/binary-package/), waarmee Comentario als een `systemd`-service geïnstalleerd wordt.

Zie [CHANGELOG](https://gitlab.com/comentario/comentario/-/blob/master/CHANGELOG.md) voor een uitgebreide wijzigingslijst.

## Live demo

Je kunt de nieuwe versie en de Administratieve UI (inloggen met e-mailadres `admin@admin` en wachtwoord `admin`) bekijken op de demowebsite:

{{< button "https://demo.comentario.app/" "Comments live demo" "btn-primary mb-3" >}}
{{< button "https://edge.comentario.app/" "Administratieve UI Demo" "btn-primary mb-3" >}}

## Installatie

Als je de nieuwe versie wilt uitproberen, kun je beginnen met de volgende documentatiepagina's:

* [Getting started](https://docs.comentario.app/en/getting-started/).
* [Installation](https://docs.comentario.app/en/installation/).
* [Migration](https://docs.comentario.app/en/installation/migration/).
