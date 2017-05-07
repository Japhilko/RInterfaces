# Rgit
Jan-Philipp Kolb  
09 Mai 2017  




## Rstudio und git - ein Projekt anlegen

![](figure/NeuesProjekt.PNG)


## Ein Projekt mit Versionskontrolle

![](figure/VersionControl.PNG)

## Auswahl Versionskontrolle

![](figure/gitSVN.PNG)

## Ein Projekt clonen

![](figure/CloneProject.PNG)

## Der git-Reiter in Rstudio

![](figure/gitReiter.PNG)

## Aktuelle eigene Änderungen committen

![](figure/CommitMessage.PNG)


## Links

- [Commit failed - git shell](http://stackoverflow.com/questions/11229843/github-windows-commit-failed-failed-to-create-a-new-commit)

- [Git cheatsheet](https://services.github.com/on-demand/downloads/github-git-cheat-sheet.pdf)


## Commands

``` 
git commit
```

``` 
git push
```


<http://stackoverflow.com/questions/1125968/force-git-to-overwrite-local-files-on-pull>

## Problems with disk space

[WinDirStat](http://www.tecchannel.de/storage/tools/2037869/mit_windirstat_kostenlos_speicherplatz_auf_der_festplatte_visualisieren/)
<https://support.microsoft.com/de-de/kb/912997>
<http://www.pcwelt.de/tipps/Update-Dateien-loeschen-8357046.html>


## [Quelle für Pakete](https://www.researchgate.net/figure/301746965_fig1_Figure-2-Number-of-R-packages-by-source)

![](https://www.researchgate.net/profile/Tom_Mens/publication/301746965/figure/fig1/AS:356583633637381@1462027571464/Figure-2-Number-of-R-packages-by-source.png)

## Ein Paket von Github installieren


```r
install.packages("devtools")
library(devtools)
install_github("Japhilko/gosmd")
```



## Datensätze Suchfunktion

![](figure/SearchableGithub.PNG)


## Links

- [Using github and rstudio](https://www.r-bloggers.com/version-control-file-sharing-and-collaboration-using-github-and-rstudio/)

- [How do I tell Git for Windows where to find my private RSA key](http://serverfault.com/questions/194567/how-do-i-tell-git-for-windows-where-to-find-my-private-rsa-key)

- [Reset local repository branch to be just like remote repository HEAD](http://stackoverflow.com/questions/1628088/reset-local-repository-branch-to-be-just-like-remote-repository-head)

- [How I Manage Data Analysis Projects with RStudio and Git - Part 1](http://christianlemp.com/blog/2014/02/05/How-I-Manage-Data-Projects-with-RStudio-and-Git.html)
