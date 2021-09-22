BScUmweltingenieurwesen

AngewandteGeoinformatik | HS 2020

# Coding in GIS II

# Nils Ratnaweera
Forschungsgruppe Geoinformatik
 
Institut für Umwelt und Natürliche Ressourcen	
ZHAW Zürcher Hochschule für Angewandte Wissenschaften
Grüental, Postfach, CH-8820 Wädenswil
 
rata@zhaw.ch

![](img/AGI_HS19_06_Coding_in_GIS_II0.png)

# Zeitplan

# Lernziele

![](img/AGI_HS19_06_Coding_in_GIS_II1.png)

* Ihr wisst was Python Erweiterungen / Module sind und wie man sie installiert
* Ihr kennt das Konzept vonCondaEnvironments
* Ihr wisst was eine «Working Directory» ist und könnt diese abfragen und setzen

# Heute

__Python Erweiterungen / Module__

Virtual Environments

Conda

Condamit ArcGIS

Leistungsnachweis

# Python Erweiterungen / Module

<span style="color:#00B0F0">Erweiterung aus einem</span>

<span style="color:#00B0F0">Reposoritory</span>  <span style="color:#00B0F0"> _installieren_ </span>

![](img/AGI_HS19_06_Coding_in_GIS_II2.jpg)

![](img/AGI_HS19_06_Coding_in_GIS_II3.png)

![](img/AGI_HS19_06_Coding_in_GIS_II4.jpg)

![](img/AGI_HS19_06_Coding_in_GIS_II5.jpg)

<span style="color:#00B0F0">Erweiterung Laden</span>

Spezialisten/innen

Projekt «Haus bauen»

![](img/AGI_HS19_06_Coding_in_GIS_II6.png)

![](img/AGI_HS19_06_Coding_in_GIS_II7.png)

# Heute

Python Erweiterungen / Module

__Virtual Environment__

Conda

Condamit ArcGIS

Leistungsnachweis

# Virtual Environment

Ohne Virtual Environments:

Alles wird an einem zentralen Ort installiert

Viele Erweiterungen

![](img/AGI_HS19_06_Coding_in_GIS_II8.png)

![](img/AGI_HS19_06_Coding_in_GIS_II9.jpg)

![](img/AGI_HS19_06_Coding_in_GIS_II10.png)

![](img/AGI_HS19_06_Coding_in_GIS_II11.jpg)

![](img/AGI_HS19_06_Coding_in_GIS_II12.png)

![](img/AGI_HS19_06_Coding_in_GIS_II13.png)

![](img/AGI_HS19_06_Coding_in_GIS_II14.jpg)

![](img/AGI_HS19_06_Coding_in_GIS_II15.png)

mit Virtual Environments

Verschiedene «Umgebungen» die

voneinanderunabhängigsind

wiederverwendbarsind

Viele Erweiterungen

![](img/AGI_HS19_06_Coding_in_GIS_II16.png)

![](img/AGI_HS19_06_Coding_in_GIS_II17.jpg)

![](img/AGI_HS19_06_Coding_in_GIS_II18.png)

![](img/AGI_HS19_06_Coding_in_GIS_II19.jpg)

![](img/AGI_HS19_06_Coding_in_GIS_II20.png)

![](img/AGI_HS19_06_Coding_in_GIS_II21.jpg)

![](img/AGI_HS19_06_Coding_in_GIS_II22.png)

# Heute

Python Erweiterungen / Module

Virtual Environment

__Conda__

Condamit ArcGIS

Leistungsnachweis

# Conda

* Was kann «Conda»?
  * Erstellen und verwalten von «Virtual Environments»
  * Installation von Erweiterungen («Python Modules»)
* Wie nutzt man «Conda»?
  * Schritt 1: Software herunterladen und installieren
  * Schritt 2: Systemvariable setzen falls nötig
  * Schritt 3: eine «Virtual Environment» erstellen
  * Schritt 4: die «Virtual Environment» aktivieren
  * Schritt 5: Modul installieren

* __Schritt 1: Software herunterladen und installieren__
* _conda_ wird in zwei verschiedenen Varianten angeboten:
  * «Miniconda»:
    * nur das Programm _conda_
    * Ohne grafisches User Interface
    * Klein (50 – 100mb)
    * Wird mit ArcGIS Pro mitgeliefert
  * «Anaconda»:
    * Das Programm _conda_
    * Inkl. häufig genutzt Modules
    * Inkl. einem Grafisches User Interface
    * Gross (300 – 500 MB)

* __Schritt 2: Systemvariable setzen falls nötig__
* Condaist ein Programm, welches von der Kommandozeile aus bedient wird (cmdin Windows)
* Dafür muss die Konsole wissen, wo das Programm installiert ist
* Um zu prüfen, ob dies der Fall ist kann folgendermassen getestet werden:
  * Konsole starten (Widowstaste+cmd)
  * Folgendes eingeben:conda–version
  * Versionsnummer / Error 

__Schritt 2: Systemvariable setzen falls nötig__

Wird ein Programm in der Konsole aufgerufen, wird nach diesem Programm in verschiedenen Ordnern gesucht

Welche Ordner dies sind, wird in derUmgebungvariablenfestgehalten

Wir müssen denconda-Pfad also ausfindig machen und in denUmgebungsvariabelnfesthalten

__Schritt 2: Systemvariable setzen falls nötig__

Wenn ihr auf Windows arbeitet und ArcGIS installiert habt, istcondavermutlich hier installiert:

C:\Program Files\ArcGIS\Pro\bin\Python\Scripts

__Schritt 2: Systemvariable setzen falls nötig__

![](img/AGI_HS19_06_Coding_in_GIS_II23.png)

__Schritt 2: Systemvariable setzen falls nötig__

![](img/AGI_HS19_06_Coding_in_GIS_II24.png)

__Schritt 2: Systemvariable setzen falls nötig__

![](img/AGI_HS19_06_Coding_in_GIS_II25.png)

__Schritt 2: Systemvariable setzen falls nötig__

Nun sollte «conda» betriebsbereit sein

Konsole starten (cmd):>>conda--versionconda4.3.27

Wenn dies Funktioniert, können wir eine erste «condaenvironment» erstellen

__Schritt 3:__  __Conda__  __environment__  __erstellen__

condacreate--namecodingingis

__Schritt 3:__  __Conda__  __environment__  __erstellen__

<span style="color:#FF0000">conda</span> create--namecodingingis

Ruft das Programm «conda» auf

__Schritt 3:__  __Conda__  __environment__  __erstellen__

conda <span style="color:#FF0000">create</span> --namecodingingis

Ruft den Befehl «create» auscondaauf

Der «create» Befehl erstellt eben diese neue Environment in einem Standartverzeichnis

__Schritt 3:__  __Conda__  __environment__  __erstellen__

condacreate <span style="color:#FF0000">--name</span> codingingis

Kündigt an, dass gleich der Name der neuen Umgebung definiert wird

__Schritt 3:__  __Conda__  __environment__  __erstellen__

condacreate--name <span style="color:#FF0000">codingingis</span>

Bestimmt, das der Name der neuen Umgebung «codingingis» lauten soll

![](img/AGI_HS19_06_Coding_in_GIS_II26.png)

Speicherort: C:\Users\rata\AppData\Local\ESRI\conda

Mit "y" bestätigen

![](img/AGI_HS19_06_Coding_in_GIS_II27.png)

__Schritt 4: Environment aktivieren__

activatecodingingis

«Aktiviert» die Environment mit dem Namen «codingingis»

![](img/AGI_HS19_06_Coding_in_GIS_II28.png)

__Schritt 5: Modul installieren__

![](img/AGI_HS19_06_Coding_in_GIS_II29.png)

__Schritt 5: Modul installieren__

conda install -c conda-forge pandas

Befehl um «pandas» zu installieren

Findet man über eine kurzeGooglesuche

__Schritt 5: Modul installieren__

<span style="color:#FF0000">conda</span> install -c conda-forge pandas

Ruft das Programm «conda» auf

__Schritt 5: Modul installieren__

conda <span style="color:#FF0000">install</span> -c conda-forge pandas

Ruft den Befehl «install» inCondaauf

__Schritt 5: Modul installieren__

conda install <span style="color:#FF0000">-c</span> conda-forge pandas

Gibt an, dass jetzt gleich der «Channel» angegeben wird

Der Channel ist das «Repository»

__Schritt 4: Modul installieren__

conda install -c <span style="color:#FF0000">conda-forge</span> pandas

Ist der Name des «channels»

__Schritt 5: Modul installieren__

conda install -c conda-forge <span style="color:#FF0000">pandas</span>

Der Name des Moduls, dass man installieren möchte

__Schritt 5: Modul installieren__

![](img/AGI_HS19_06_Coding_in_GIS_II30.png)

![](img/AGI_HS19_06_Coding_in_GIS_II31.png)

* __Schritt 5: Modul installieren__
* Für Coding in GIS I – III brauchen wir folgende Module:
  * jupyterlab,pandas,matplotlib,geopandas,descartes
  * Immer nach dem gleichen Syntax:condainstall-c conda-forge <span style="color:#FF0000">pandas</span>
* Sobaldjupyterlabinstalliertist,könntihrdieAnwendungmitfolgendemBefehlin dieKonsolestarten:jupyterlab

![](img/AGI_HS19_06_Coding_in_GIS_II32.png)

__Modul Importieren__

![](img/AGI_HS19_06_Coding_in_GIS_II33.png)

<span style="color:#FF0000">zB</span>  <span style="color:#FF0000">.</span>  <span style="color:#FF0000">import</span>  <span style="color:#FF0000">pandas</span>

__Working Directory__

wo diePythonscripts/Notebooks sind

Ist v.a. beim einlesen / ausgeben von Dateien wichtig

kann mitos.getcwd()ermittelt werden

![](img/AGI_HS19_06_Coding_in_GIS_II34.png)

__Warum verbringen wir so viel Zeit mit__  __conda__  __?__

Der sichere Umgang mitCondaist eine gute Basis für eine harmonische Python-Beziehung

Conda(o.ä.) wird in vielen Python Kursen / Tutorials vorausgesetzt und unzureichend erklärt

Mitcondakönnen wir zwei Welten miteinander Verbinden

![](img/AGI_HS19_06_Coding_in_GIS_II35.png)

![](img/AGI_HS19_06_Coding_in_GIS_II36.jpg)

![](img/AGI_HS19_06_Coding_in_GIS_II37.jpg)

![](img/AGI_HS19_06_Coding_in_GIS_II38.png)

![](img/AGI_HS19_06_Coding_in_GIS_II39.png)

![](img/AGI_HS19_06_Coding_in_GIS_II40.png)

![](img/AGI_HS19_06_Coding_in_GIS_II41.png)

# Heute

Python Erweiterungen / Module

Virtual Environment

Conda

__Conda__  __mit ArcGIS__

Leistungsnachweis

# Conda mit ArcGIS

![](img/AGI_HS19_06_Coding_in_GIS_II42.png)

![](img/AGI_HS19_06_Coding_in_GIS_II43.png)

arcpy.analysis.SummarizeWithin("Wald_NichtWald", "Tick_Original",r"C:\unsicherheit.gdb\summary", "KEEP_ALL", None, "ADD_SHAPE_SUM", '', None, "NO_MIN_MAJ", "NO_PERCENT", None)

![](img/AGI_HS19_06_Coding_in_GIS_II44.png)

![](img/AGI_HS19_06_Coding_in_GIS_II45.png)

![](img/AGI_HS19_06_Coding_in_GIS_II46.png)

![](img/AGI_HS19_06_Coding_in_GIS_II47.png)

![](img/AGI_HS19_06_Coding_in_GIS_II48.png)

![](img/AGI_HS19_06_Coding_in_GIS_II49.png)

![](img/AGI_HS19_06_Coding_in_GIS_II50.png)

![](img/AGI_HS19_06_Coding_in_GIS_II51.png)

![](img/AGI_HS19_06_Coding_in_GIS_II52.png)

![](img/AGI_HS19_06_Coding_in_GIS_II53.png)

![](img/AGI_HS19_06_Coding_in_GIS_II54.png)

![](img/AGI_HS19_06_Coding_in_GIS_II55.png)

![](img/AGI_HS19_06_Coding_in_GIS_II56.png)

![](img/AGI_HS19_06_Coding_in_GIS_II57.png)

![](img/AGI_HS19_06_Coding_in_GIS_II58.png)

![](img/AGI_HS19_06_Coding_in_GIS_II59.png)

# Heute

Python Erweiterungen / Module

Virtual Environment

Conda

Condamit ArcGIS

__Leistungsnachweis__

# Leistungsnachweis

Gemeinsam kommende Woche (Coding in GIS III):

Monte Carlo Simulation mit den Zeckenstichdaten

Systematik gleich wie in «Datenqualität und Unsicherheit»

Neu: Alles in Python (auch die Erstellung der Simulierten Daten)

Zeckenstichmeldungen

![](img/AGI_HS19_06_Coding_in_GIS_II60.jpg)

![](img/AGI_HS19_06_Coding_in_GIS_II61.jpg)

![](img/AGI_HS19_06_Coding_in_GIS_II62.png)

Zufällig verteilen

![](img/AGI_HS19_06_Coding_in_GIS_II63.png)

Zeckenstiche _im_ Wald ermitteln

Mittelwert /Verteilungder Anteile darstellen

![](img/AGI_HS19_06_Coding_in_GIS_II64.png)

Eure Leistung

Erstellen eines geordneten, __kommentierten__ Reports

InJupyterLabs mitJupyterNotebook (Python undMarkdown)

Experimentieren mit verschiedenen Radien

Visualisierung der Daten

![](img/AGI_HS19_06_Coding_in_GIS_II65.png)

# Zeitplan

# 

![](img/AGI_HS19_06_Coding_in_GIS_II66.png)

__https://ratnanil.github.io/codingingis/__

# Keep your code tidy!

importpadnasaspd

pd.read_csv("zeckenstiche.csv")

importpandasaspd

zeckenstiche=pd.read_csv("zeckenstiche.csv")

os.chdir("'C:\\Users\\rata\\switchdrive\\Lehre\\Bachelor\\AGI\\MyBinderRepo\\source\\notebooks2py'")

os.getcwd()

importos

zeckenstiche=pd.read_csv("Zeckenstiche.csv")

zeckenstiche=pd.read_csv("Zeckenstiche.txt")

zeckenstiche=pd.read_csv("zeckenstiche.txt")

<span style="color:#FF0000">import</span>  <span style="color:#FF0000">padnas</span>  <span style="color:#FF0000">as</span>  <span style="color:#FF0000">pd</span>

pd.read_csv("zeckenstiche.csv")

<span style="color:#FF0000">import</span>  <span style="color:#FF0000">pandas</span>  <span style="color:#FF0000">as</span>  <span style="color:#FF0000">pd</span>

zeckenstiche=pd.read_csv("zeckenstiche.csv")

os.chdir("'C:\\Users\\rata\\switchdrive\\Lehre\\Bachelor\\AGI\\MyBinderRepo\\source\\notebooks2py'")

os.getcwd()

<span style="color:#FF0000">import</span>  <span style="color:#FF0000">os</span>

zeckenstiche=pd.read_csv("Zeckenstiche.csv")

zeckenstiche=pd.read_csv("Zeckenstiche.txt")

zeckenstiche=pd.read_csv("zeckenstiche.txt")

importpadnasaspd

importpandasaspd

importos

pd.read_csv("zeckenstiche.csv")

zeckenstiche=pd.read_csv("zeckenstiche.csv")

os.chdir("'C:\\Users\\rata\\switchdrive\\Lehre\\Bachelor\\AGI\\MyBinderRepo\\source\\notebooks2py'")

os.getcwd()

zeckenstiche=pd.read_csv("Zeckenstiche.csv")

zeckenstiche=pd.read_csv("Zeckenstiche.txt")

zeckenstiche=pd.read_csv("zeckenstiche.txt")

<span style="color:#FF0000">import</span>  <span style="color:#FF0000">padnas</span>  <span style="color:#FF0000">as</span>  <span style="color:#FF0000">pd</span>

importpandasaspd

importos

pd.read_csv("zeckenstiche.csv")

zeckenstiche=pd.read_csv("zeckenstiche.csv")

os.chdir("'C:\\Users\\rata\\switchdrive\\Lehre\\Bachelor\\AGI\\MyBinderRepo\\source\\notebooks2py'")

os.getcwd()

<span style="color:#FF0000">zeckenstiche</span>  <span style="color:#FF0000">=</span>  <span style="color:#FF0000">pd.read_csv</span>  <span style="color:#FF0000">("Zeckenstiche.csv")</span>

<span style="color:#FF0000">zeckenstiche</span>  <span style="color:#FF0000">=</span>  <span style="color:#FF0000">pd.read_csv</span>  <span style="color:#FF0000">("Zeckenstiche.txt")</span>

<span style="color:#FF0000">zeckenstiche</span>  <span style="color:#FF0000">=</span>  <span style="color:#FF0000">pd.read_csv</span>  <span style="color:#FF0000">("zeckenstiche.txt")</span>

importpandasaspd

importos

pd.read_csv("zeckenstiche.csv")

zeckenstiche=pd.read_csv("zeckenstiche.csv")

os.chdir("'C:\\Users\\rata\\switchdrive\\Lehre\\Bachelor\\AGI\\MyBinderRepo\\source\\notebooks2py'")

os.getcwd()

importpandasaspd

importos

pd.read_csv("zeckenstiche.csv")

zeckenstiche=pd.read_csv("zeckenstiche.csv")

<span style="color:#FF0000">os.chdir</span>  <span style="color:#FF0000">("'C:\\Users\\rata\\</span>  <span style="color:#FF0000">switchdrive</span>  <span style="color:#FF0000">\\Lehre\\Bachelor\\AGI\\</span>  <span style="color:#FF0000">MyBinderRepo</span>  <span style="color:#FF0000">\\</span>  <span style="color:#FF0000">source</span>  <span style="color:#FF0000">\\notebooks2py'")</span>

<span style="color:#FF0000">os.getcwd</span>  <span style="color:#FF0000">()</span>

importpandasaspd

importos

os.getcwd()

os.chdir("'C:\\Users\\rata\\switchdrive\\Lehre\\Bachelor\\AGI\\MyBinderRepo\\source\\notebooks2py'")

pd.read_csv("zeckenstiche.csv")

zeckenstiche=pd.read_csv("zeckenstiche.csv")

importpandasaspd

importos

os.getcwd()

os.chdir("'C:\\Users\\rata\\switchdrive\\Lehre\\Bachelor\\AGI\\MyBinderRepo\\source\\notebooks2py'")

<span style="color:#FF0000">pd.read_csv</span>  <span style="color:#FF0000">("zeckenstiche.csv")</span>

zeckenstiche=pd.read_csv("zeckenstiche.csv")

importpandasaspd

importos

os.getcwd()

os.chdir("'C:\\Users\\rata\\switchdrive\\Lehre\\Bachelor\\AGI\\MyBinderRepo\\source\\notebooks2py'")

zeckenstiche=pd.read_csv("zeckenstiche.csv")

importpandasaspd

importos

<span style="color:#FF0000"># wo ist das</span>  <span style="color:#FF0000">current</span>  <span style="color:#FF0000">working</span>  <span style="color:#FF0000">directory</span>  <span style="color:#FF0000">?</span>

os.getcwd()

<span style="color:#FF0000"># ich muss das CWD manuell setzen:</span>

<span style="color:#FF0000"># TODO: in einem</span>  <span style="color:#FF0000">Spyder</span>  <span style="color:#FF0000">-Projekt arbeiten</span>

os.chdir("'C:\\Users\\rata\\switchdrive\\Lehre\\Bachelor\\AGI\\MyBinderRepo\\source\\notebooks2py'")

<span style="color:#FF0000"># Zeckenstichdaten aus "Datenqualität und Unsicherheit"</span>

pd.read_csv("zeckenstiche.csv")

zeckenstiche=pd.read_csv("zeckenstiche.csv")

