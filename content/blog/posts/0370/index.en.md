---
type: post
date: "2019-09-03T10:11:24+02:00"
title: "VAT number for zzp'ers is (finally) to be replaced"
tags:
    - Netherlands
    - BSN
    - taxes
    - entrepreneurship
    - zzp
    - freelance
    - business
    - VAT
    - GDPR
image: "https://res.cloudinary.com/yktoo/image/upload/blog/tqs476ottiit1062.jpg"
series: business
---

Each legal entity in the Netherlands receives a special identification number called [btw-nummer](https://www.belastingdienst.nl/wps/wcm/connect/bldcontentnl/belastingdienst/zakelijk/btw/administratie_bijhouden/btw_nummers_controleren/uw_btw_nummer) shortly after the registration ({{< fl "btw" >}} is Dutch for "{{< wiki "value-added tax" >}}").

This number is necessary for invoicing, both domestic and international, and—obviously—for VAT payments.

So what's so special about it? Well, it turns out that if you're a [self-employed](0310#eenmanszaak) entrepreneur, your VAT number is based upon your {{< fl "BSN" >}} identifier. Which is quite a blunder from the privacy point of view.

<!--more-->

## The VAT number and its privacy flaw

When I was [assigned](0311) this number at the {{< fl "KvK" >}} (the Dutch Chamber of Commerce), my first reaction was: "Wait, are you serious?".

According to the [rules](https://www.belastingdienst.nl/wps/wcm/connect/bldcontentnl/belastingdienst/zakelijk/btw/administratie_bijhouden/btw_nummers_controleren/uw_btw_nummer), the VAT number is 14 characters long and consists of:

* The two-letter country code (`NL`);
* The {{< fl "BSN" >}};
* A three-character suffix in the range `B01`…`B99`.

Which makes it look like `NL001234567B01`.

The thing is the {{< wiki "Burgerservicenummer" "nl" "BSN" >}} number uniquely identifies every person ever entered in the Dutch national personal data register {{< wiki "Basisregistratie_Personen" "nl" "BRP" >}}, which makes it one of the most sensitive pieces of personal data the {{< wiki "GDPR" >}} is so eager to protect. You can find it, for example, in passports and driving licenses:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/tqs476ottiit1062.jpg" "A specimen Dutch passport with BSN circled. Picture by rijksoverheid.nl." >}}

For example, not so long ago we've been implementing a unified authentication platform at one of Dutch ministries for *DigiD*, an online identifier used for numerous government and commercial services. Back then we had to build a special screening unit that hid {{< fl "BSN" >}}s in the page's address, even though it was only visible to the user himself.

To make this privacy fail apparent, it's important to mention that every legal entity is [obliged by law](https://www.kvk.nl/advies-en-informatie/bedrijf-starten/btw-nummer-alles-wat-je-wil-weten/) to publish its VAT number on its website, print it on invoices, mention it in emails etc., which essentially forces the entrepreneur to publicly expose their {{< fl "BSN" >}}.

That is, this was the situation up to now.

## Things are getting better

In late 2018 the problem was finally addressed. {{< fl "Autoriteit Persoonsgegevens" >}}, the Dutch Data Protection Authority, has [prohibited](https://www.autoriteitpersoonsgegevens.nl/nl/nieuws/belastingdienst-mag-bsn-niet-meer-gebruiken-btw-identificatienummer) the Tax Administration from exposing {{< fl "BSN" >}}s as of **January 1, 2020**.

In the fall {{< year 2019 "this year" >}} the Tax Administration must begin handing out new ID numbers (called {{< fl "btw-id" >}}) to the self-employed, so that they can replace the old ones for external communication as of the next year.

The existing identifiers will still be used internally by the tax office and for VAT declarations. The good news is the requirement of publishing them is now waived, which significantly reduces the risk of identity fraud.

The Tax Administration [complains](https://over-ons.belastingdienst.nl/nieuwe-btw-nummers-versterken-privacy-van-eenmanszaken/) the old identifiers (renamed now to {{< fl "ob-nummer" >}} or {{< fl "omzetbelastingnummer" >}} to avoid confusion) are used by almost every internal system there, so it's going to take a while for the migration to complete.
