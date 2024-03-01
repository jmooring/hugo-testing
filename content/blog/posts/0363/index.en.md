---
type: post
date: "2019-08-29T14:04:32+02:00"
title: "Querying any vehicle's data by its number plate"
tags:
    - Netherlands
    - RDW
    - car
    - Internet
    - OVI
image: "https://res.cloudinary.com/yktoo/image/upload/blog/4lmxutacrkgv3303.jpg"
---

The Netherlands has a public service that provides information about nearly any vehicle registered in the country, given its number plate.

The service is called [OVI](https://ovi.rdw.nl/) ({{< fl "Online Voertuig Informatie" >}} or "Online Vehicle Information") and is being run by the State Traffic Service [RDW](https://www.rdw.nl/) ({{< fl "Rijksdienst voor het Wegverkeer" >}}), whose responsibility encompasses road infrastructure as well as vehicle certification, including mandatory periodic checkups ([APK](https://www.rdw.nl/particulier/voertuigen/auto/apk)).

<!--more-->

Just for your information, in Holland a number plate is always associated with a *specific vehicle* (car, motorbike, scooter etc.) and never gets replaced when it changes hands. Which makes it possible to build a complete track record for that vehicle.

## Example

So let's take my first [leased Toyota](ru;0028) from this twelve-year-old photo as an example:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/jypcrqe2jvtr2307.jpg" "Toyota Prius 2009 with me posing." >}}

Type in `16HDK2` in the {{< fl "Kenteken" >}} field at the [OVI page](https://ovi.rdw.nl/) and you'll get the following:

{{< imgfig "ovi-kentekencheck-16hdk2.png" "The Toyota's registration data." >}}

One can easily verify it's indeed a {{< fl "Toyota Prius" >}}, grey ({{< fl "Kleur: grijs" >}}), first put on my name on November 16, 2017 at 15:20 ({{< fl "Datum tenaamstelling" >}} in the {{< fl "Vervaldata en historie" >}} section), and has had one business (me) and two private owners throughout its twelve year history (the {{< fl "Aantal eigenaren privé / zakelijk" >}} line).

On the {{< fl "Fiscaal" >}} tab you can see the original ("catalogue", {{< fl "Catalogusprijs" >}}) price for most cars, which was **€ 31,915** in my case.

Obviously, the provided information includes no personal data.

Another thing that might prove useful is the mileage reading classification (*logical* or *illogical*). {{< fl "RDW" >}} records the value at each vehicle's sale (the {{< fl "Tellerstanden" >}} section).


## Another example

Here's another one, a piece of history spotted somewhere in the nearby woods:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/4lmxutacrkgv3303.jpg" "Austin 3000 MK II." >}}

The results of the query:

{{< imgfig "ovi-kentekencheck-de6304.png" "The Austin's data." >}}

This red **Austin 3000 MK II** only had a single owner, was made in **1963** but entered Holland in 1990. The catalogue price is unspecified, which is a pity.

## The use of service

According to [RDW's terms](https://ovi.rdw.nl/colofon.aspx), this service may only be used for private purposes and at moderate rates.

There's also a separate [paid version](https://www.rdw.nl/zakelijk/branches/bedrijven/gegevens-bij-de-rdw-raadplegen/grote-hoeveelheden-voertuiggegevens-raadplegen) for business customers, which comes in two flavours:

* Browser-based (**€ 0,15** per query), or
* XML API (**€ 510** to subscribe, afterwards **€ 0,06** per query).

This one is in demand for as far as I can see since it's being used on numerous car dealer websites, online classified advertising etc.
