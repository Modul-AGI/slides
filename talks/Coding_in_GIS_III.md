---
layout: presentation
title: Coding in GIS II
permalink: Coding_in_GIS_III.html
---
name: zeitplan 
layout: true


# Zeitplan
  <table>
  <thead align="left">
    <tr>
      <th>Uhrzeit</th>
      <th>ΔT</th>
      <th>Thema</th>
    </tr>
  </thead>
  <tbody align="left">
    <tr id = "first">
      <th>13.00 – 13.30</th>
      <th>30</th>
      <th>Vorlesung</th>
    </tr>
    <tr id = "second">
      <td>13.30 – 13.45</td>
      <td>15</td>
      <td>Aufgabe 10</td>
    </tr>
    <tr class="pause">
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr id = "third">
      <td>13.50 – 14.35</td>
      <td>45</td>
      <td>Aufgabe 11 | Aufgabe 12</td>
    </tr>
    <tr class="pause">
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr id = "fourth">
      <td>14.50 – 15.05</td>
      <td>15</td>
      <td>Input: GIS in Python </td>
    </tr>
    <tr id = "fifth">
      <td>15:05 – 15.35</td>
      <td>30</td>
      <td>Aufgabe 14</td>
    </tr>
    <tr class="pause">
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr id = "sixth">
      <td>15.50 – 16.25</td>
      <td>35</td>
      <td>Aufgabe 15</td>
    </tr>
    <tr id = "seventh">
      <td>16.25 – 16.35</td>
      <td>10</td>
      <td>Wrap-up und Fragen</td>
    </tr>
  </tbody>
  </table>


---
template: zeitplan
class: first

---
layout: false
exclude: true

# Lernziele



* Wisst, warum wir diese Woche `for loops` lernen
* Versteht, dass wir bisher gar nicht mit GIS Werkzeugen gearbeitet haben und warum dies jetzt aber nötig ist
* Kennt die drei Hierarchiestufen von `GeopandasGeoDataFrames`
* Ihr wisst, dass Python ein Vollfunktionsfähiges GIS bietet, welches sämtliche von ArcGIS bekannten Operationen zur Verfügung stellt
* Ihr kennt die Anforderungen an den Leistungsnachweis für den Themenblock "Coding in GIS"

---
name: themen
layout: true

background-color: #fbd4c0


# Themen
<ul>
 <li id = "first">Breaking New</li>
 <li id = "second">Rückblick Coding in GIS II</li>
 <li id = "third">For Loops</li>
 <li id = "fourth">GIS in Python</li>
 <li id = "fifth">Leistungsnachweis</li>
<ul>

---
template: themen
class: first

---
layout: true

# Breaking news

---


<img src ="img/twitter-python-tiobe.png" class = "card center" style = "width: 75%;">

---
background-color: #fbd4c0


<blockquote style = "color: black">
For the first time in more than 20 years we have a new leader of the pack: the Python programming language. The long-standing hegemony of Java and C is over. Python, which started as a simple scripting language, as an alternative to Perl, has become mature. <span id = "first">Its ease of learning</span>, its huge amount of libraries, and its widespread use in all kinds of domains, has made it the most popular programming language of today. Congratulations Guido van Rossum! Proficiat!
</blockquote>
 -- Paul Jansen CEO TIOBE Software 

--
class: first

---
layout: false

# Breaking <del>news</del> things

<iframe src='//gifs.com/embed/office-meltdown-vnra6Q' frameborder='0' scrolling='no' width='360px' height='270px' style='-webkit-backface-visibility: hidden;-webkit-transform: scale(1);' class = "pull-center"></iframe>
---
template: themen
class: second

---
background-image: url(https://wallpapercave.com/wp/33mRKA5.jpg)
layout: false
class: center, middle



# Conda

---
layout: true
name: conda

# Vor jedem Aufstarten (in der Konsole)


<div class = "pull-right">
<ol>
  <li>(auf diesem Computer)</li>
  <li><code>conda create --name agi-env</code></li>
  <li><code>activate agi-env</code></li>
  <li><code>cd C:\Users\rata\...</code></li>
  <li><code>conda list</code></li>
  <li><code>conda install -c conda-forge...</code></li>
  <li><code>jupyter lab</code></li>
</ol>
</div>

---
template: conda
<img src = "img/mermaid-conda-env.svg" class = "pull-left">


---
template: conda
<img src = "img/mermaid-conda-env2.svg" class = "pull-left">

---
layout: false



<img src = "img/jb-desktop.png" style = "width: 70%" class = "card pull-center">

.footnote[https://blog.jupyter.org/jupyterlab-desktop-app-now-available-b8b661b17e9a]

---

# Für jedes Modul

<div class = "pull-left">
<img src = "img/mermaid-module.svg" style = "width: 120%">
</div>

<ol class = "pull-right">
  <li>Vorher alle Notebooks speichern</li>
  <li>ersichtlich ab dem Namen in Klammern</li>
  <li><code>activate agi-env</code></li>
  <li><code>conda install -c conda-forge pandas</code></li>
<ol>

---
layout: false
class: center, middle
background-image: url(https://davenewt.github.io/assets/images/perlin%20noise%20flowfield.png)

<h1 style = "color: white">Ein Einzelpunkt zufällig verschieben</h1>

---
layout: true

# Ein Einzelpunkt zufällig verschieben

---

Zum Beispiel hat unser Punkt die Koordinate 0, 0

```python
>>> x_start = 0
>>> x_offset = random.normalvariate(0,100)
>>> x_offset
10.24617

>>> x_neu = x_start + x_offset
>>> x_neu
10.24617
```
--

```python
>>> y_start = 0
>>> y_offset = random.normalvariate(0,100)
>>> y_offset
-4.443904

>>> y_neu = y_start + y_offset
>>> y_neu
-4.443904
```

---
<img src="https://modul-agi.github.io/HS21/_images/8_Zufallzahlen_25_1.png" style = "width: 75%" class = "pull-center">
---
<img src="https://modul-agi.github.io/HS21/_images/normalverteilung.jpg" style = "width: 75%" class = "pull-center">
---
<img src = "img/AGI_HS19_08_Coding_in_GIS_III7.png" style = "width: 75%" class = "pull-center">

---
layout: false
# Workflow > Function

```python
def offset_coordinate(old, distance = 100):
    import random
    new = old +random.normalvariate(0,distance)

    return new
```

---
layout: true
# Function > DataFrame

---

<img src="img/AGI_HS19_08_Coding_in_GIS_III9.png" style="width: 50%">
---
<img src="img/AGI_HS19_08_Coding_in_GIS_III10.png" style="width: 75%">
---

```python
zeckenstiche["x"].apply(offset_coordinate)
#\______1_______/ \_2_/ \_______3_______/
```

1. Spalte selektieren
--

2. Methode "`apply`" aufrufen
--

3. function übergeben

--


```python
zeckenstiche["x_sim"] = zeckenstiche["x"].apply(offset_coordinate)
zeckenstiche["y_sim"] = zeckenstiche["y"].apply(offset_coordinate)
```



---
<img src="img/AGI_HS19_08_Coding_in_GIS_III13.png" style="width: 50%" class = "pull-center">
---

```python
zeckenstiche["x_sim"] = zeckenstiche["x"].apply(offset_coordinate, distance = zeckenstiche["accuracy"])
zeckenstiche["y_sim"] = zeckenstiche["y"].apply(offset_coordinate, distance = zeckenstiche["accuracy"])
```
--

<img src="img/AGI_HS19_08_Coding_in_GIS_III14.png" style="width: 75%">

---
template: themen
class: third

---
layout: true
# For Loops

---


```python
>>> for platzhalter in [0, 1, 2]:
>>>     print("Iteration"+, platzhalter)
Iteration 0
Iteration 1
Iteration 2

```

---

```python
>>> x_sim = []
>>> for platzhalter in range(1000):
>>>     x_new <- offset_coordinate(0, 100)
>>>     x_sim.append(x_new)
```
--

<img src = "img/AGI_HS19_08_Coding_in_GIS_III7.png" style = "width: 50%" class = "pull-center">

---

<iframe width="560" height="315" src="https://www.youtube.com/embed/h0XeOa9Rlbc?start=38" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<blockquote style="color: black">
I'm a bitch, I'm a lover
I'm a child, I'm a mother
I'm a sinner, I'm a saint
</blockquote>
Meredith Brooks
---
template: themen
class: fourth

---
layout: true
# GIS in Python

---

<img src="img/AGI_HS19_08_Coding_in_GIS_III16.png" class = "pull-left">

<div class = "pull-right">
Was fehlt?

<ul>
  <li>Eine Geometrie</li>
  <li>Ein Koordinaten<u>bezugs</u>system</li>
</ul>
</div>

---

***Geo*DataFrames**

<img src="img/AGI_HS19_08_Coding_in_GIS_III20.png" style = "width: 75%">

---

![](img/AGI_HS19_08_Coding_in_GIS_III21.png)


???
Jedes Geometrische Objekt hat ein Attribut
Gleiche viele Features wie Attribute

---

![](img/AGI_HS19_08_Coding_in_GIS_III22.png)

???
Verschiedene Objekte teilen sich Attribute
Mehr Features als Attribute

---
# Simple Features

In verschiedensten Systemen integriert:

* <span style="color:#FF0000">R</span> (library `sf`)
* <span style="color:#FF0000">Datenbanken</span> (PostGIS, MySQL…)
* Python (geopandas,shapely)
* Auch in ESRI, aber _versteckt und unzugänglich_

???
* Transferable knowledge – learn architectures, not frameworks

---

### Buffer 

<img src = "img/AGI_HS19_08_Coding_in_GIS_III23.png" style="width: 50%">

---

### MinimumBoundingGeometry

<img src = "img/AGI_HS19_08_Coding_in_GIS_III24.png" style="width: 75%">

---

### Overlay

<img src = "img/AGI_HS19_08_Coding_in_GIS_III25.png" style="width: 75%">

---

### Kernel Density

<img src = "img/AGI_HS19_08_Coding_in_GIS_III26.png" style="width: 75%">

---

### Web Maps

<img src = "img/AGI_HS19_08_Coding_in_GIS_III27.png" style="width: 50%">

---
template: themen
class: fifth

---
layout: false
# Leistungsnachweis

https://modul-agi.github.io/HS21/B_Coding_in_GIS_3/9_Leistungsnachweis.html


---
template: zeitplan
class: second


---
template: zeitplan
class: third


---
template: zeitplan
class: fourth


---
template: zeitplan
class: fifth


---
template: zeitplan
class: sixth


---
template: zeitplan
class: 