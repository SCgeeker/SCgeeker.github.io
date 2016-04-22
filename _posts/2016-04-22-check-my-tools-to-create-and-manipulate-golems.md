---
layout: post
title:  Check My Tools to Create and Manipulate Golems
date: 2016-04-22
published: true
categories: [R_programming, Rethinking]
---

Since two weeks before I published this post, I have started read the book [Statistical Rethinking: A Bayesian Course with Examples in R and Stan](http://xcelab.net/rm/statistical-rethinking/) written by [Richard McElreath](http://xcelab.net/rm/). Richard is the evolutionary anthropologist at Max Planck Institute. He wrote this textbook for the PhD students who will use the Bayesian statistics in their research projects. Compared to the textbooks written by statisians and data scientistst, Richard's book explain and demonstrate the statistical methods with examples instead of equations. His intention is to help who are not staticians but used to use statistics realize one fact: we rely on the statistical models as the representations of our answers rather than answer the questions by the raw data or naked truth. Many non-statisticians are used to find and learn what kind of methods or apps to deal with their data, but few are interested to know the models under the mentods and apps they are using. The trouble and danger is that they thought their jobs are done when the program printed the tables and figures but these outputs are from the statistical model is unable to answer their question. This situation is originated from many non-statisticans consider themselves the end-users of statistical models. Like any user of a packaged software, non-statisticans have no time to understand how the tools in their hands designed and conducted by statisticans.  
Richard introduced the story of [golem](https://en.wikipedia.org/wiki/Golem) to raise the non-statsiticans' attention to the troubles they had made and will make. A statistical model, like a golem, has the power beyond human to finish the work the human are unable to do, for example, trace the passengers' track from the trillion of camera. Its power could be misused or out of control if we do not understand what is the root of its action. A user of ststistical method, no matter you are or are not stistician, have to keep the awareness of engineer when you are dealing with your data. Today everyone has many easier ways than a decade ago to keep the awareness of engineer. One advantage is that the learning curve for being an part-time hacker is getting smooth. Increasing R apps are opening many windows for who are want to outlook and modify the statistical models.  
Since this post, every post listed in the category `Rethinking` is one of the summaries and feedbacks to [Statistical Rethinking: A Bayesian Course with Examples in R and Stan](https://www.crcpress.com/Statistical-Rethinking-A-Bayesian-Course-with-Examples-in-R-and-Stan/McElreath/9781482253443). At first I have to check my toolkits for create and manipulate the statistical models. They are R core and the packages. Years ago I have used to use the packages in my data processing. Now I show them for who start to use R after read this post.
  
```
install.packages(c("rpart","chron","Hmisc","Design","Matrix","stringr","lme4","coda","e1071","zipfR","ape","languageR","multcomp","contrast","shiny","ggplot2", "dplyr"))
```  
  
Some of the packages are learned from I participated in [Cousera Data Science](https://www.coursera.org/specializations/jhu-data-science). Now I used to use `dplyr` to process the raw data, and I am learning how to draw the figures I need in use of `ggplot2`. When this post is published, I have updated my R to R version 3.2.5 (2016-04-14). Through [the codes of Heuristic Andrew](http://xcelab.net/rm/statistical-rethinking/), here are my installed packages.  

```r
ip <- as.data.frame(installed.packages()[,c(1,3:4)])
rownames(ip) <- NULL
ip <- ip[is.na(ip$Priority),1:2,drop=FALSE]
print(ip, row.names=FALSE)
```

```
##             Package    Version
##             acepack    1.3-3.3
##                 ape        3.4
##            argparse      1.0.1
##          assertthat        0.1
##           base64enc      0.1-3
##                  BH   1.60.0-1
##              bibtex      0.4.0
##                 bit     1.1-12
##              bitops      1.0-6
##            bookdown     0.0.63
##                brew      1.0-6
##              brocks        0.4
##             caTools     1.17.1
##               chron     2.3-47
##                coda     0.18-1
##          colorspace      1.2-6
##            contrast       0.19
##                curl      0.9.7
##               darch     0.10.0
##          data.table      1.9.6
##                 DBI      0.3.1
##            devtools     1.11.1
##           dichromat      2.0-0
##              digest      0.6.9
##               dplyr      0.4.3
##               e1071      1.6-7
##            evaluate      0.8.3
##                  ff     2.2-13
##          findpython      1.0.1
##             formatR        1.3
##             Formula      1.2-1
##       futile.logger      1.4.1
##      futile.options      1.0.0
##           gcookbook        1.0
##               gdata     2.17.0
##              getopt     1.20.0
##             ggplot2      2.1.0
##               git2r     0.14.0
##              gplots      3.0.1
##           gridExtra      2.2.1
##              gtable      0.2.0
##              gtools      3.5.0
##            gWidgets     0.0-54
##                 h2o    3.8.1.3
##               highr      0.5.1
##               Hmisc     3.17-3
##           htmltools      0.3.5
##              httpuv      1.3.3
##                httr      1.1.0
##              inline     0.3.14
##            installr     0.17.5
##            jsonlite     0.9.19
##       knitcitations      1.0.7
##               knitr    1.12.22
##            labeling        0.3
##            lambda.r      1.1.7
##           languageR      1.4.1
##        latticeExtra     0.6-28
##            lazyeval     0.1.10
##                lme4     1.1-12
##                 loo      0.1.6
##           lubridate      1.5.6
##            magrittr        1.5
##          manipulate      1.0.1
##            markdown      0.7.7
##        MatrixModels      0.4-1
##         matrixStats     0.50.1
##             memoise      1.0.0
##                mime        0.4
##              miniUI      0.1.1
##               minqa      1.2.4
##            multcomp      1.4-4
##             munsell      0.4.3
##             mvtnorm      1.0-5
##              nloptr      1.0.4
##             openssl      0.9.2
##             packrat    0.4.7-1
##                 PKI      0.1-3
##                plyr      1.8.3
##                 png      0.1-7
##           polspline     1.1.12
##               proto     0.3-10
##            quantreg       5.21
##                  R6      2.1.2
##        RColorBrewer      1.1-2
##                Rcpp     0.12.4
##           RcppEigen  0.3.2.8.1
##               RCurl   1.95-4.8
##          RefManageR    0.10.13
##            reshape2      1.4.1
##          rethinking       1.58
##               rjson     0.2.15
##             RJSONIO      1.3-0
##           rmarkdown    0.9.5.9
##                 rms      4.5-0
##                Rook      1.1-1
##            roxygen2      5.0.1
##           rsconnect    0.4.2.2
##               rstan    2.9.0-3
##          rstudioapi        0.5
##               RUnit     0.4.31
##           rversions      1.0.2
##               rvest      0.3.1
##            sandwich      2.3-4
##              scales      0.4.0
##             selectr      0.2-3
##               servr        0.4
##               shiny     0.13.2
##            shinyAce      0.2.1
##             shinyBS       0.61
##          shinyFiles      0.6.0
##              slackr        1.2
##             SparseM        1.7
##         StanHeaders      2.9.0
##           statcheck      1.0.1
##             statmod     1.4.24
##             stringi      1.0-1
##             stringr      1.0.0
##             TH.data      1.0-7
##             whisker      0.3-2
##               withr      1.0.1
##                 XML   3.98-1.4
##                xml2      0.1.2
##              xtable      1.8-2
##                yaml     2.1.13
##               zipfR      0.6-6
##                 zoo     1.7-12
##             acepack    1.3-3.3
##       addinexamples      0.1.0
##          assertthat        0.1
##              bibtex      0.4.0
##                 bit     1.1-12
##              bitops      1.0-6
##                brew      1.0-6
##              brocks 0.3.999999
##             caTools     1.17.1
##               chron     2.3-47
##          colorspace      1.2-6
##                curl      0.9.7
##               darch     0.10.0
##          data.table      1.9.6
##                 DBI      0.3.1
##            devtools     1.11.1
##           dichromat      2.0-0
##              digest      0.6.9
##               dplyr      0.4.3
##               editR      0.2.2
##            evaluate      0.8.3
##                  ff     2.2-13
##             formatR        1.3
##             Formula      1.2-1
##       futile.logger      1.4.1
##      futile.options      1.0.0
##           gcookbook        1.0
##               gdata     2.17.0
##             ggplot2      2.1.0
##               git2r     0.14.0
##              gplots      3.0.1
##           gridExtra      2.2.1
##              gtable      0.2.0
##              gtools      3.5.0
##            gWidgets     0.0-54
##  gWidgetsManipulate        1.0
##                 h2o    3.8.1.4
##               highr      0.5.1
##               Hmisc     3.17-3
##           htmltools      0.3.5
##              httpuv      1.3.3
##                httr      1.1.0
##            installr     0.17.5
##            jsonlite     0.9.19
##       knitcitations      1.0.7
##               knitr     1.12.3
##            labeling        0.3
##            lambda.r      1.1.7
##        latticeExtra     0.6-28
##            lazyeval     0.1.10
##                lme4     1.1-12
##           lubridate      1.5.6
##            magrittr        1.5
##          manipulate      1.0.1
##            markdown      0.7.7
##             memoise      1.0.0
##                mime        0.4
##              miniUI      0.1.1
##               minqa      1.2.4
##             munsell      0.4.3
##              nloptr      1.0.4
##                plyr      1.8.3
##                 png      0.1-7
##                  R6      2.1.2
##             rCharts      0.4.5
##        RColorBrewer      1.1-2
##                Rcpp     0.12.4
##           RcppEigen  0.3.2.8.1
##               RCurl   1.95-4.8
##          RefManageR    0.10.13
##            reshape2      1.4.1
##            Rgitbook        0.9
##               rjson     0.2.15
##             RJSONIO      1.3-0
##           rmarkdown      0.9.5
##                Rook      1.1-1
##            roxygen2      5.0.1
##          rstudioapi        0.5
##           rversions      1.0.2
##               rvest      0.3.1
##              scales      0.4.0
##             selectr      0.2-3
##               servr        0.4
##               shiny     0.13.2
##            shinyAce      0.2.1
##             shinyBS       0.61
##         shinyCustom      0.1.0
##          shinyFiles      0.6.0
##              slackr 1.3.1.9001
##             slidify        0.5
##    slidifyLibraries      0.3.1
##             statmod     1.4.24
##             stringi      1.0-1
##             stringr      1.0.0
##             whisker      0.3-2
##               withr      1.0.1
##                 XML   3.98-1.4
##                xml2      0.1.2
##              xtable      1.8-2
##                yaml     2.1.13
```

```r
print(paste0("There are ",dim(ip)[1], " packages installed in my laptop."))
```

```
## [1] "There are 227 packages installed in my laptop."
```

Richard's book inspired me help people control their golems/ststistical models in the process of coding. In his book, literature and codes are separated. Readers who are not familiar with coding skill might hardly follow his literature. Literatural coding might be the best way to impliment the `Rethinking`. I am going to accumulating the codes of Bayesian statistics and thake notes of his and others literatures in the coming posts. 
