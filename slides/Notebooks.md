# Notebooks
Jan-Philipp Kolb  
8 Mai 2017  



## Notebooks

- [Warum R Notebook nutzen](https://news.ycombinator.com/item?id=12683625)

![](http://rmarkdown.rstudio.com/images/notebook-demo.png)

# Rnotebooks

## Ein Rnotebook anlegen

![](figure/startNotebook.png)

## Rnotebook - erste Schritte

- Es lassen sich so genannte Chunks einfügen
- In diesen Chunks wird ganz normaler R-code geschrieben

![](figure/NotebooksBasicEx.PNG)


## Python Code integrieren

- Ebenso lässt sich [Python code implementieren](https://support.rstudio.com/hc/en-us/articles/233066128-Do-Notebooks-support-other-languages-)


![](figure/pythonCode.PNG)


```python
import sys
print(sys.version)
```

```
## 3.5.2 (v3.5.2:4def2a2901a5, Jun 25 2016, 22:01:18) [MSC v.1900 32 bit (Intel)]
```

## [LaTeX Code integieren](https://blog.rstudio.org/2016/10/05/r-notebooks/)

- LaTeX code wird mit zwei Dollarzeichen gekennzeichnet

![](figure/LaTexCode.PNG)


## Notebook veröffentlichen I

![](figure/PublishNotebook.PNG)

## Notebook veröffentlichen II

![](figure/PublishNotebook2.PNG)

# Andere Notebooks

## [Jupyter Notebook](http://jupyter.readthedocs.io/en/latest/install.html)

![](http://jupyter.readthedocs.io/en/latest/_static/_images/jupyter.svg)

- Anaconda installieren
- folgenden Befehl in die Eingabeaufforderung eingeben
- Diese findet man bei windows wenn man cmd in Suche eingibt.

```
jupyter notebook
```
## Start Jupyter Notebook

![](figure/JupyterEx.PNG)

## Beispiel Eingabe Code

![](figure/JupyterNotebookQmap.PNG)


# Beaker Notebook

## Beaker Notebook

- Auch bei Beaker kann man R-code einbauen

![](figure/Beaker.PNG)

## Beaker starten

- [Beaker installieren](http://beakernotebook.com/getting-started) ...
- ... und mit `beaker.command.bat` starten

![](figure/BeakerEx.PNG)


## Links

- [knitr Language Engines](http://rmarkdown.rstudio.com/authoring_knitr_engines.html)

- [More engines](https://yihui.name/knitr/demo/engines/)

- [Andere Programmiersprachen können eingebunden werden](http://rmarkdown.rstudio.com/authoring_knitr_engines.html)

- [Video - Einführung in Rnotebook](https://www.rstudio.com/resources/webinars/introducing-notebooks-with-r-markdown/)

- [R Notebooks](http://rmarkdown.rstudio.com/r_notebooks.html)

- [IPython vs knitr, or Python vs R](https://yihui.name/en/2012/11/ipython-vs-knitr/)
