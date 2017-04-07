---
layout: post
title:  Check My Tools to Create and Manipulate Golems
date: 2017-04-07
published: true
categories: [R_programming, Rethinking]
---

Since two weeks before I published this post, I have started read the book [Statistical Rethinking: A Bayesian Course with Examples in R and Stan](http://xcelab.net/rm/statistical-rethinking/) written by [Richard McElreath](http://xcelab.net/rm/). Richard is the evolutionary anthropologist at Max Planck Institute. He wrote this textbook for the PhD students who will use the Bayesian statistics in their research projects. Compared to the textbooks written by statisians and data scientistst, Richard's book explain and demonstrate the statistical methods with examples instead of equations. His intention is to help who are not staticians but used to use statistics realize one fact: we rely on the statistical models as the representations of our answers rather than answer the questions by the raw data or naked truth. Many non-statisticians are used to find and learn what kind of methods or apps to deal with their data, but few are interested to know the models under the mentods and apps they are using. The trouble and danger is that they thought their jobs are done when the program printed the tables and figures but these outputs are from the statistical model is unable to answer their question. This situation is originated from many non-statisticans consider themselves the end-users of statistical models. Like any user of a packaged software, non-statisticans have no time to understand how the tools in their hands designed and conducted by statisticans.  
Richard introduced the story of [golem](https://en.wikipedia.org/wiki/Golem) to raise the non-statsiticans' attention to the troubles they had made and will make. A statistical model, like a golem, has the power beyond human to finish the work the human are unable to do, for example, trace the passengers' track from the trillion of camera. Its power could be misused or out of control if we do not understand what is the root of its action. A user of ststistical method, no matter you are or are not stistician, have to keep the awareness of engineer when you are dealing with your data. Today everyone has many easier ways than a decade ago to keep the awareness of engineer. One advantage is that the learning curve for being an part-time hacker is getting smooth. Increasing R apps are opening many windows for who are want to outlook and modify the statistical models.  
Since this post, every post listed in the category `Rethinking` is one of the summaries and feedbacks to [Statistical Rethinking: A Bayesian Course with Examples in R and Stan](https://www.crcpress.com/Statistical-Rethinking-A-Bayesian-Course-with-Examples-in-R-and-Stan/McElreath/9781482253443). At first I have to check my toolkits for create and manipulate the statistical models. They are R core and the packages. Years ago I have used to use the packages in my data processing. Now I show them for who start to use R after read this post.
  
```
install.packages(c("rpart","chron","Hmisc","Design","Matrix","stringr","lme4","coda","e1071","zipfR","ape","languageR","multcomp","contrast","shiny","ggplot2", "dplyr"))
```  
  
Some of the packages are learned from I participated in [Cousera Data Science](https://www.coursera.org/specializations/jhu-data-science). Now I used to use `dplyr` to process the raw data, and I am learning how to draw the figures I need in use of `ggplot2`. When this post is published, I have updated my R to R version 3.3.3 (2017-03-06). Through [the codes of Heuristic Andrew](http://xcelab.net/rm/statistical-rethinking/), here are my installed packages.  

```r
ip <- as.data.frame(installed.packages()[,c(1,3:4)])
rownames(ip) <- NULL
ip <- ip[is.na(ip$Priority),1:2,drop=FALSE]
print(ip, row.names=FALSE)
```

```
##             Package    Version
##              R2jags      0.5-7
##               rjags        4-6
##               abind      1.4-5
##             acepack      1.4.1
##       addinexamples      0.1.0
##          assertthat        0.1
##           backports      1.0.5
##           base64enc      0.1-3
##         BayesFactor   0.9.12-2
##           bayesplot      1.1.0
##                  BH   1.62.0-1
##              bibtex      0.4.0
##               binom      1.1-1
##                 bit     1.1-12
##              bitops      1.0-6
##                brew      1.0-6
##              brocks 0.3.999999
##                 car      2.1-4
##             caTools     1.17.1
##           checkmate      1.8.2
##               chron     2.3-50
##                coda     0.19-1
##          colorspace      1.3-2
##        colourpicker        0.3
##          commonmark        1.2
##          compute.es      0.2-4
##                covr      2.2.2
##              crayon      1.3.2
##                 CTT        2.1
##                curl        2.3
##               darch     0.12.0
##          data.table     1.10.4
##                 DBI        0.6
##                desc      1.1.0
##            devtools     1.12.0
##           dichromat      2.0-0
##              digest     0.6.12
##          doParallel     1.0.10
##               dplyr      0.5.0
##                  DT        0.2
##            dygraphs    1.1.1.4
##               editR      0.2.2
##            evaluate       0.10
##                  ff     2.2-13
##             foreach      1.4.3
##             formatR        1.4
##             Formula      1.2-1
##       futile.logger      1.4.3
##      futile.options      1.0.0
##           gcookbook        1.0
##               gdata     2.17.0
##             ggplot2      2.2.1
##               git2r     0.18.0
##              gmailr      0.7.1
##              gplots      3.0.1
##            gridBase      0.4-7
##           gridExtra      2.2.1
##              gtable      0.2.0
##              gtools      3.5.0
##            gWidgets     0.0-54
##  gWidgetsManipulate        1.0
##                 h2o   3.10.3.6
##               highr        0.6
##               Hmisc      4.0-2
##                 hms        0.3
##           htmlTable        1.9
##           htmltools      0.3.5
##         htmlwidgets        0.8
##              httpuv      1.3.3
##                httr      1.2.1
##            hunspell        2.3
##              igraph      1.0.1
##              inline     0.3.14
##            installr     0.18.0
##               irlba      2.1.2
##           iterators      1.0.8
##                jpeg      0.1-8
##            jsonlite        1.3
##       knitcitations      1.0.7
##               knitr     1.15.1
##            labeling        0.3
##            lambda.r      1.1.9
##        latticeExtra     0.6-28
##            lazyeval      0.2.0
##               lintr      1.0.0
##                lme4     1.1-12
##                 loo      1.0.0
##           lubridate      1.6.0
##            magrittr        1.5
##          manipulate      1.0.1
##            markdown      0.7.7
##        MatrixModels      0.4-1
##         matrixStats     0.51.0
##                mcmc      0.9-4
##            MCMCpack      1.3-9
##              memisc     0.99.8
##             memoise      1.0.0
##             metafor      1.9-9
##                mime        0.5
##              miniUI      0.1.1
##               minqa      1.2.4
##              mnormt      1.5-5
##        ModelMetrics      1.1.0
##             munsell      0.4.3
##                 MVR     1.31.0
##             mvtnorm      1.0-6
##            nhstplot      1.0.1
##              nloptr      1.0.4
##                 NMF     0.20.6
##             openssl      0.9.6
##                osfr 0.0.0.9000
##             packrat    0.4.8-1
##              pacman      0.4.1
##             pbapply      1.3-2
##            pbkrtest      0.4-6
##            pkgmaker       0.22
##                 PKI      0.1-3
##                plyr      1.8.4
##                 png      0.1-7
##           polspline     1.1.12
##              praise      1.0.0
##                 psy        1.1
##               psych     1.6.12
##                 pwr      1.2-0
##           qualtRics        0.3
##            quantreg       5.29
##              R2jags      0.5-7
##           R2WinBUGS     2.1-21
##                  R6      2.2.0
##            rappdirs      0.3.1
##             rCharts      0.4.5
##        RColorBrewer      1.1-2
##                Rcpp     0.12.9
##           RcppEigen  0.3.2.9.0
##               RCurl   1.95-4.8
##               readr      1.0.0
##          RefManageR     0.13.1
##            registry        0.3
##            reshape2      1.4.2
##          rethinking       1.59
##                 rex      1.1.1
##            Rgitbook        0.9
##               rJava      0.9-8
##               rjson     0.2.15
##             RJSONIO      1.3-0
##           rmarkdown        1.3
##            rngtools      1.2.4
##                Rook      1.1-1
##            roxygen2      6.0.1
##           rprojroot        1.2
##             rpsychi        0.8
##           rsconnect        0.7
##               rstan     2.14.1
##          rstudioapi        0.6
##               RUnit     0.4.31
##           rversions      1.0.3
##               rvest      0.3.2
##              scales      0.4.1
##             selectr      0.3-1
##               servr        0.5
##               shiny      1.0.0
##             shinyBS       0.61
##         shinyCustom      0.1.0
##             shinyjs        0.9
##           shinystan      2.3.0
##         shinythemes      1.1.1
##              slackr      1.4.2
##             slidify        0.5
##    slidifyLibraries      0.3.1
##         sourcetools      0.1.5
##             SparseM       1.74
##             statmod     1.4.29
##          stringdist    0.9.4.4
##             stringi      1.1.2
##             stringr      1.2.0
##            testthat      1.0.2
##             threejs      0.2.2
##              tibble        1.2
##               tutor      0.2.0
##             viridis      0.3.4
##             whisker      0.3-2
##               withr      1.0.2
##                xlsx      0.5.7
##            xlsxjars      0.6.1
##                 XML   3.98-1.5
##                xml2      1.1.1
##              xtable      1.8-2
##                 xts      0.9-7
##                yaml     2.1.14
##               yarrr      0.1.4
##                 zoo     1.7-14
```

```r
print(paste0("There are ",dim(ip)[1], " packages installed in my laptop."))
```

```
## [1] "There are 191 packages installed in my laptop."
```

Richard's book inspired me help people control their golems/ststistical models in the process of coding. In his book, literature and codes are separated. Readers who are not familiar with coding skill might hardly follow his literature. Literatural coding might be the best way to impliment the `Rethinking`. I am going to accumulating the codes of Bayesian statistics and thake notes of his and others literatures in the coming posts. 
