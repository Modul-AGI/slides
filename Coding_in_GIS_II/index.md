---
layout: presentation
title: Default Presentation
permalink: /Coding_in_GIS_II/
# I'm using ruby instad of bash because of https://github.com/gnab/remark/issues/658
---

<div class = "titleslide">
<h3 class = "title-header" style = "top: 20%;"> 
  BSc Umweltingenieurwesen<br> Angewandte Geoinformatik | HS21
</h3>

<h1 class = "title-header" style = "top: 40%;">Coding in GIS II</h1>

<div class = "title-header title-bottom" style = "width: 20%">
  <img src="img/zhaw_rgb_byline_d.png" width = 100%> 
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
</div>
---
name: zeitplan 

# Zeitplan

| Uhrzeit       	| Dauer   	| Thema                                               	|
|:--------------	|:--------	|:----------------------------------------------------	|
| 13.00 – 13.30 	| 30      	| Einführung Coding in GIS                            	|
| 13.30 – 13.45 	| 15      	| Einführung in die heutigen Übungen                  	|
| 13.45 – 13.50 	| 5       	| Pause                                               	|
| 13.50 – 14.00 	| 10      	| Demo                                                	|
| 14.00 – 14.35 	| 35      	| Lösen Aufgabe 1 (*Primitive Datentypen*)            	|
| 14.35 – 14.50 	| 15      	| Pause                                               	|
| 14.50 – 15.00 	| 10      	| Besprechung Aufgabe 1 / Lösungen aufschalten        	|
| 15.00 – 15.35 	| 35      	| Lösen Aufgabe 2 (*Listen*)                          	|
| 15.35 – 15.50 	| 15      	| Pause                                               	|
| 15.50 – 16.00 	| 10      	| Besprechung Aufgabe 2 / Lösungen aufschalten        	|
| 16.00 – 16.25 	| 25      	| Lösen Aufgabe 3 (*Dictionaries*)                    	|
| 16.25 – 16.35 	| 10      	| Zusammenfassung + Abschluss / Lösungen aufschalten  	|
| Zuhause       	| 30 - 45 	| Lösen bis und mit Aufgabe 4 (*Tabellarische Daten*) 	|


---
# Lernziele

* Ihr wisst was Python Erweiterungen / Module sind und wie man sie installiert
* Ihr kennt das Konzept von Conda Environments
* Ihr wisst was eine *Working Directory* ist und könnt diese abfragen und setzen

---
name: themen
layout: true

# Themen

<ul>
  <li id = "first">Python Erweiterungen / Module</li>
  <li id = "second">Virtual Environments</li>
  <li id = "third">Conda</li>
  <li id = "fourth">Conda mit ArcGIS</li>
  <li id = "fifth">Leistungsnachweis</li>
</ul>

---
template: themen
class: first

---
layout: true

# Python Erweiterungen / Module

---

![](img/virtual-env.png)


---
template: themen
class: second

---
layout: true
# Virtual Environment

---

ohne Virtual Environments:

.center[![](img/virtual-env-2.png)]

.center[Alles wird an einem zentralen Ort installiert]

---

mit Virtual Environments

.center[![](img/virtual-env3.png)]

.center[unabhängige, wiederverwenbare Umgebungen]

???

davon gibt es in Python 3 verschiedene Implementationen:​
- "Virtualenv"
- "pipenv"
- "Conda Environment"


---
template: themen
class: third

---
layout: false
# Conda



- Was kann *Conda*
  * Erstellen und verwalten von *Virtual Environments*
  * Installation von Erweiterungen (*Python Modules*)

- Wie nutzt man *Conda*?
  * ~~Schritt 1: Software herunterladen und installieren~~
  * Schritt 2: Systemvariable setzen (falls nötig)
  * Schritt 3: eine *Virtual Environment* erstellen
  * Schritt 4: die *Virtual Environment* aktivieren
  * Schritt 5: Modul installieren

---

## Schritt 1: Software herunterladen und installieren

_conda_ wird in zwei verschiedenen Varianten angeboten:

* *Miniconda*:
  * nur das Programm _conda_
  * ohne grafisches User Interface
  * klein (50 – 100mb)
  * **wird mit ArcGIS Pro mitgeliefert**
* *Anaconda*:
  * das Programm _conda_
  * inkl. häufig genutzt Modules
  * inkl. einem Grafisches User Interface
  * gross (300 – 500 MB)

---
layout: true

## Schritt 2: Systemvariable setzen (falls nötig)

---

* Conda wird von der **Konsole** bedient
* Dafür muss die Konsole wissen, wo das Programm installiert ist
* Dies wird folgendermassen überprüft:
--

1. Konsole starten (Widowstaste+cmd)
--

2. Folgendes eingeben: `conda --version`
--

3. Versionsnummer ☺ / Error ☹

---

- Wird ein Programm in der Konsole aufgerufen, wird nach diesem Programm in verschiedenen Ordnern gesucht
- Welche Ordner dies sind, wird in den Umgebungvariablen festgehalten
- Wir müssen den `conda`-Pfad also ausfindig machen und in den Umgebungsvariabeln festhalten

---

- Wenn ihr auf Windows arbeitet und ArcGIS installiert habt, ist conda vermutlich hier installiert:
- `C:\Program Files\ArcGIS\Pro\bin\Python\Scripts`

---

<img src = "img/AGI_HS19_06_Coding_in_GIS_II23.png" style = "width: 75%">

---

<img src = "img/AGI_HS19_06_Coding_in_GIS_II24.png" style = "width: 75%">

---

<img src = "img/AGI_HS19_06_Coding_in_GIS_II25.png" style = "width: 75%">

---


- Nun sollte *conda* betriebsbereit sein
- Konsole starten (cmd):

```ruby
conda --version
conda 4.3.27      # < kann auch variieren
```


- Wenn dies Funktioniert, können wir eine erste *conda environment* erstellen

---
layout: true

## Schritt 3:  Conda environment erstellen

---


```ruby
conda create --name codingingis
```

---
```ruby
`conda` create --name codingingis
```
Ruft das Programm *conda* auf

---


```ruby
conda `create` --name codingingis
```
Ruft den Befehl *create* auscondaauf

Der *create* Befehl erstellt eben diese neue Environment in einem Standartverzeichnis

---

```ruby
conda create `--name` codingingis
```

Kündigt an, dass gleich der Name der neuen Umgebung definiert wird

---

```ruby
conda create --name `codingingis`
```

Bestimmt, das der Name der neuen Umgebung *codingingis* lauten soll

---

<img src = "img/AGI_HS19_06_Coding_in_GIS_II26.png" width = 80%>

- Speicherort: `C:\Users\rata\AppData\Local\ESRI\conda`
- Mit `y` bestätigen

---

<img src = "img/AGI_HS19_06_Coding_in_GIS_II27.png" width = 100%>

---
layout: true

## Schritt 4: Environment aktivieren

---

```ruby
activate codingingis
```
- Aktiviert die Environment mit dem Namen `codingingis`

---

<img src = "img/AGI_HS19_06_Coding_in_GIS_II28.png" width = 100%>

---
layout: true
## Schritt 5: Modul installieren


---
<img src = "img/AGI_HS19_06_Coding_in_GIS_II29.png" width = 100%>

---

```ruby
conda install -c conda-forge pandas
```

- Befehl um *pandas* zu installieren
- Findet man über eine kurze websuche

---


```ruby
`conda` install -c conda-forge pandas
```

- ruft das Programm *conda* auf

---


```ruby
conda `install` -c conda-forge pandas
```

- ruft den Befehl *install* in Condaauf

---


```ruby
conda install `-c` conda-forge pandas
```

- gibt an, dass jetzt gleich der *Channel* (i.e. das *Repository*) angegeben wird

---

```ruby
conda install -c `conda-forge` pandas
```

- ist der Name des *channels*

---

```ruby
conda install -c conda-forge `pandas`
```

- der Name des Moduls

---

<img src = "img/AGI_HS19_06_Coding_in_GIS_II30.png" width = 100%>

---

<img src = "img/AGI_HS19_06_Coding_in_GIS_II31.png" width = 100%>

---

Für Coding in GIS I – III brauchen wir folgende Module:
* `jupyterlab`
* `pandas`
* `matplotlib`
* `geopandas`
* `descartes`

Immer nach dem gleichen Syntax:

```ruby
conda install -c conda-forge `pandas` # < Modul-Name jeweils ersetzen
```

Sobald jupyterlab installiert ist, könnt ihr die Anwendung mit folgendem Befehl in die Konsole starten:

```ruby
jupyter lab
```

---

<img src = "img/AGI_HS19_06_Coding_in_GIS_II32.png" width = 100%>

---
layout: false

## Modul Importieren

<img src = "img/AGI_HS19_06_Coding_in_GIS_II33.png" width = 100%>

zB  `import  pandas`

---
## Working Directory

<img src = "img/AGI_HS19_06_Coding_in_GIS_II34.png" width = 100%>


- wo die Pythonscripts / Notebooks sind
- Ist v.a. beim einlesen / ausgeben von Dateien wichtig
- kann mit `os.getcwd()` ermittelt werden


---
## Warum verbringen wir so viel Zeit mit `conda`?

- Der sichere Umgang mit Conda ist eine gute Basis für eine harmonische Python-Beziehung
- Conda wird in vielen Python Kursen / Tutorials vorausgesetzt und unzureichend erklärt
- Mit conda können wir zwei Welten miteinander Verbinden

--

<img src = "img/AGI_HS20_02_Coding_in_GIS_Ia66.png" class = "pull-left">
<img src = "img/AGI_HS19_06_Coding_in_GIS_II38.png" class = "pull-right">


---
template: themen
class: fourth

---
layout: true
exclude: true

# Conda mit ArcGIS

---
exclude: true

<img src = "img/AGI_HS19_06_Coding_in_GIS_II42.png" width = 100%>

---
exclude: true

<img src = "img/AGI_HS19_06_Coding_in_GIS_II43.png" width = 50%>

```python
arcpy.analysis.SummarizeWithin("Wald_NichtWald", 
  "Tick_Original",
  r"C:\unsicherheit.gdb\summary", 
  "KEEP_ALL", 
  None, 
  "ADD_SHAPE_SUM", 
  '', 
  None, 
  "NO_MIN_MAJ", 
  "NO_PERCENT", 
  None
)
```
---
exclude: true

<img src = "img/AGI_HS19_06_Coding_in_GIS_II44.png" width = 100%>

---
exclude: true


![](img/AGI_HS19_06_Coding_in_GIS_II45.png)

---
exclude: true


<img src = "img/AGI_HS19_06_Coding_in_GIS_II46.png" width = 70%>
---
exclude: true

![](img/AGI_HS19_06_Coding_in_GIS_II47.png)

---
exclude: true

![](img/AGI_HS19_06_Coding_in_GIS_II48.png)

---
exclude: true


![](img/AGI_HS19_06_Coding_in_GIS_II49.png)

---
exclude: true

![](img/AGI_HS19_06_Coding_in_GIS_II50.png)

---
exclude: true

![](img/AGI_HS19_06_Coding_in_GIS_II51.png)

---
exclude: true

![](img/AGI_HS19_06_Coding_in_GIS_II52.png)


---
exclude: true


![](img/AGI_HS19_06_Coding_in_GIS_II53.png)

---
exclude: true

![](img/AGI_HS19_06_Coding_in_GIS_II54.png)

---
exclude: true

![](img/AGI_HS19_06_Coding_in_GIS_II55.png)

---
exclude: true

![](img/AGI_HS19_06_Coding_in_GIS_II56.png)

---
exclude: true


![](img/AGI_HS19_06_Coding_in_GIS_II57.png)


---
exclude: true


![](img/AGI_HS19_06_Coding_in_GIS_II58.png)

---
exclude: true

![](img/AGI_HS19_06_Coding_in_GIS_II59.png)

---
template: themen
class: fifth

---
layout: true

# Leistungsnachweis

---
Gemeinsam kommende Woche (Coding in GIS III):

- Monte Carlo Simulation mit den Zeckenstichdaten
- Systematik gleich wie in *Datenqualität und Unsicherheit*
- Neu: Alles in Python (auch die Erstellung der Simulierten Daten)


![](img/process.png)

---

Eure Leistung: 

- Erstellen eines sauber kommentierten Reports
- In JupyterLabs mit JupyterNotebook (Python und Markdown)
- Experimentieren mit verschiedenen Radien
- Visualisierung der Daten

<img src = "img/AGI_HS19_06_Coding_in_GIS_II65.png" style = "width: 75%">

---
layout: true

# Keep your code tidy!

---

```python
import padnas as pd​

​pd.read_csv("zeckenstiche.csv")​

import pandas as pd​

os.getcwd()​

import os​

zeckenstiche = pd.read_csv("Zeckenstiche.csv")​

zeckenstiche = pd.read_csv("Zeckenstiche.txt")​

zeckenstiche = pd.read_csv("zeckenstiche.txt")
```

---

```python
*import padnas as pd​

​pd.read_csv("zeckenstiche.csv")​

*import pandas as pd​

os.getcwd()​

*import os​

zeckenstiche = pd.read_csv("Zeckenstiche.csv")​

zeckenstiche = pd.read_csv("Zeckenstiche.txt")​

zeckenstiche = pd.read_csv("zeckenstiche.txt")
```
???

Alle "import» befehle zu beginn des scripts​

---

```python
*import padnas as pd​
*import pandas as pd​
*import os​

​pd.read_csv("zeckenstiche.csv")​


os.getcwd()​


zeckenstiche = pd.read_csv("Zeckenstiche.csv")​

zeckenstiche = pd.read_csv("Zeckenstiche.txt")​

zeckenstiche = pd.read_csv("zeckenstiche.txt")
```

---

```python
*import padnas as pd​
import pandas as pd​
import os​

​pd.read_csv("zeckenstiche.csv")​


os.getcwd()​


*zeckenstiche = pd.read_csv("Zeckenstiche.csv")​

*zeckenstiche = pd.read_csv("Zeckenstiche.txt")​

zeckenstiche = pd.read_csv("zeckenstiche.txt")
```

???

Code-Zeilen, die Nicht funktinoieren auskommentieren oder löschen​

---

```python
import pandas as pd​
import os​

*pd.read_csv("zeckenstiche.csv")​

*os.getcwd()​

zeckenstiche = pd.read_csv("zeckenstiche.txt")
```

???

Die Reihenfolge der Ausführung berücksichtigen! Ein Skript sollte von oben bis unten funktionieren​


---
template: zeitplan