---
layout: presentation
title: Coding in GIS II
permalink: /Coding_in_GIS_III/
---
class: titleslide

<h3 class = "title-header" style = "top: 20%;"> 
  BSc Umweltingenieurwesen<br> Angewandte Geoinformatik | HS21
</h3>

<h1 class = "title-header" style = "top: 40%;">Coding in GIS III</h1>

<div class = "title-header title-bottom" style = "width: 20%">
  <img src="zhaw_rgb_byline_d.png" width = 100%> 
</div>
<div class = "title-header title-bottom" style = "left: 40%; width: 47%;">
  Nils Ratnaweera<br>
  Forschungsgruppe Geoinformatik<br>
  <br>
  Institut für Umwelt und Natürliche Ressourcen	<br>
  ZHAW Zürcher Hochschule für Angewandte Wissenschaften<br>
  Grüental, Postfach, CH-8820 Wädenswil<br>
  <br>
  rata@zhaw.ch

---

# Lernziele


* Ihr versteht das Ziel der Übungen aus Coding in GIS II
* Wisst, warum wir diese Woche "for loops" lernen
* Versteht, dass wir bisher gar nicht mit GIS Werkzeugen gearbeitet haben und warum dies jetzt aber nötig ist
* Kennt die drei Hierarchiestufen von GeopandasGeoDataFrames
* Ihr wisst, dass Python ein Vollfunktionsfähiges GIS bietet, welches sämtliche von ArcGIS bekannten Operationen zur Verfügung stellt
* Ihr kennt die Anforderungen an den Leistungsnachweis für den Themenblock "Coding in GIS"

---
name: themen
layout: true
# Themen
<ul>
 <li id = "first">Rückblick Coding in GIS II</li>
 <li id = "second">For Loops</li>
 <li id = "third">GIS in Python</li>
 <li id = "fourth">Leistungsnachweis</li>
<ul>

---
tempalte: themen
class: first

---
layout: false

# Ein Einzelpunkt zufällig verschieben

```
x_start= 0

x_offset=random.normalvariate(0,100)

x_neu=x_start+x_offset

```

---

![](AGI_HS19_08_Coding_in_GIS_III2.png)
---

![](AGI_HS19_08_Coding_in_GIS_III3.png)
---
![](AGI_HS19_08_Coding_in_GIS_III4.png)
---
x_start= 0

y_start= 0

x_offset=random.normalvariate(0,100)

y_offset=random.normalvariate(0,100)

x_neu=x_start+x_offset

y_neu=y_start+y_offset

![](AGI_HS19_08_Coding_in_GIS_III5.png)

![](AGI_HS19_08_Coding_in_GIS_III6.png)

![](AGI_HS19_08_Coding_in_GIS_III7.png)

![](AGI_HS19_08_Coding_in_GIS_III8.png)

---
# Workflow > Function

def offset_coordinate(old, distance = 100):

import random

new = old +random.normalvariate(0,distance)

return new

---
# Function > DataFrame

![](AGI_HS19_08_Coding_in_GIS_III9.png)

![](AGI_HS19_08_Coding_in_GIS_III10.png)

![](AGI_HS19_08_Coding_in_GIS_III11.png)

![](AGI_HS19_08_Coding_in_GIS_III12.png)

distance= "accuracy"

![](AGI_HS19_08_Coding_in_GIS_III13.png)

![](AGI_HS19_08_Coding_in_GIS_III14.png)

---
# Heute

Rückblick Coding in GIS II

__For Loops__

GIS in Python

Leistungsnachweis

---
# for loops

![](AGI_HS19_08_Coding_in_GIS_III15.png)

---
# Heute

Rückblick Coding in GIS II

For Loops

__GIS in Python__

Leistungsnachweis

---
# GIS in Python

![](AGI_HS19_08_Coding_in_GIS_III16.png)

Was fehlt?

Eine Geometrie

Ein Koordinaten __bezugs__ system

![](AGI_HS19_08_Coding_in_GIS_III17.png)

![](AGI_HS19_08_Coding_in_GIS_III18.jpg)

---
# DataFrames > GeoDataFrames

![](AGI_HS19_08_Coding_in_GIS_III19.png)

![](AGI_HS19_08_Coding_in_GIS_III20.png)

---
# Geometries

![](AGI_HS19_08_Coding_in_GIS_III21.png)

Jedes Geometrische Objekt hat ein Attribut

Gleiche viele Features wie Attribute

![](AGI_HS19_08_Coding_in_GIS_III22.png)

Verschiedene Objekte teilen sich Attribute

Mehr Features als Attribute

---
# Simple Features

* In verschiedensten Systemen integriert
  * <span style="color:#FF0000">R</span> (librarysf)
  * <span style="color:#FF0000">Datenbanken</span> (PostGIS, MySQL…)
  * Python (geopandas,shapely)
  * Auch in ESRI, aber _versteckt und unzugänglich_
* Transferableknowledge–learnarchitectures, notframeworks

---
# Räumliche Funktionen

![](AGI_HS19_08_Coding_in_GIS_III23.png)

MinimumBoundingGeometry

![](AGI_HS19_08_Coding_in_GIS_III24.png)

gpd.overlay(my_convex_hull_gdf,buffered_gdf,how='difference')

![](AGI_HS19_08_Coding_in_GIS_III25.png)

![](AGI_HS19_08_Coding_in_GIS_III26.png)

Hintergrund Karten

![](AGI_HS19_08_Coding_in_GIS_III27.png)

![](AGI_HS19_08_Coding_in_GIS_III28.png)

---
# Heute

Rückblick Coding in GIS II

For Loops

GIS in Python

__Leistungsnachweis__

---
# Leistungsnachweis

__Ziel__ : Beantwortung der Frage „Welcher Anteil der Zeckenstiche befinden sich im Wald“ unter besonderer Berücksichtigung der Datenungenauigkeit.

__Inhalt__ : Vorgehen gemäss Abb. 5, der Inhalt ist gegeben durch Aufgabe 15: Grand Finale sowie der Zusatzaufträge

__Struktur__ : Führt dieDatenanlysedurch, indem ihr den Python Code mitMarkdownText unterstützt. Beschreibt und begründet eure Analyseschritte und wie die Resultate zuinterpetierensind. Der Fokus soll auf der technischen Umsetzung liegen, nicht auf der Interpretation der Resultate.

* Abgabe:
* EinJupyter-Notebook-File (*.ipynb) __und__
* Einhtml-Export desJupyter-Notebook Files:
  * Wichtig: Zuerst alle Zellen ausführen (Run > Run allcells)
  * Export via File > Export Notebookas> Export Notebooktohtml
