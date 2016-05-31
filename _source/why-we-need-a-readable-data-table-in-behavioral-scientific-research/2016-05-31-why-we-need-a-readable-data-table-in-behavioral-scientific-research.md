---
layout: post
title:  Why we need a readable data table in behavioral scientific research?
date: 2016-05-31
published: true
categories: [Rethinking, statistics]
---
### A bad case

A few days ago I was dealing with a raw data set as like the following table.

|ID|Group|I01|I02|I03|I04|I05|I06|
|---|---|---|---|---|---|---|---|
|s01|A|3|4|5|1|2|3|
|s02|A|2|5|3|2|1|1|
|s03|A|4|5|4|3|1|1|
|s04|B|2|1|5|4|3|3|
|s05|B|2|1|2|5|2|1|
|s06|B|2|3|3|4|2|1|
  
This table is a tiny version I copied from a master graduate's spss raw data table. The format of the table is frequently seen in the data files for SPSS software. This format originated the "row cognition" for data in every mind who are not familar with the statistical tools. Without the awareness of structure, people used to stack a lot of bricks horizontally. As like the table shows, there are the data of 6 participants. A new statistical tool user tend to fill all the information and data for a participant in a row as possible. This format fits human cognition for the naive thing who never manipulate before. However, the computers recognize the table by column, in other words, a "column cognition". I show you how computer deal with the summation of one participant's scores by the following codes.


```r
s01_data <- c(3,4,5,1,2,3)
units <- rep(1,6)
sum(s01_data)
```

[1] 18

```r
t(units)%*%s01_data
```

     [,1]
[1,]   18


The function `sum` is one of the first functions a new statistical tool user have learned at the first class. `sum` is used to add all the scores of a participant. A new user tend to append the summation to the end of a row. But the last code show you a programing language recognizes the scores of a participant by column. The evidence is that the sturcture of `t(units)' is row but the structure of `s01_data` is a column. How do we eliminate the difference between human and machine cognition? Why human tend to deal with the data by row rather by column?

### Codes to make the table readable

To make the table readable for the computer, I have to modify the format of this table as like this:


```r
Table <- read.csv("data.csv")
New_Table = data.frame(ID = rep(Table[,1],6), Group = rep(Table[,2],6), Item = rep(names(Table[,3:8]), each = 6), Resp = unlist(c(Table[,3:8])))
head(New_Table)
```

```
##       ID Group Item Resp
## I011 s01     A  I01    3
## I012 s02     A  I01    2
## I013 s03     A  I01    4
## I014 s04     B  I01    2
## I015 s05     B  I01    2
## I016 s06     B  I01    2
```


The new table arrange all the raw scores in one column. I create a new column `Item` in this table. `Item` is the index like `ID` and `Group`. We are able to summarize the total score of each participant by combine the index 'ID' and 'Item'. We also average the group means by the index `Group'.

### Congigurate human mind approaching a readable data table

Why we have to make effort for waving a table readable for the computer? It is the human nature we prefer every column filled with meanings in a table. Every item has the reason a researcher put it into the study. Organizing all scores of items in a row occupy the meanings in the human cognition, but the index of items is meaningless for every human mind. A researcher need a table filled with the analyzable data for the statitical tool. In the case of this post, the analyzable data is the summation of all 6 items. A table like this case embodies the desired table for the researcher but needs a column of summarized scores for the computer. This gap has to be fixed before a precise statistical process is conducted. The solution I prefer is design the table format at first. This is the main reason I and my students have to prepare a code book before the start of the experiment.

The secondary solution depends on the packaged functions. There are many raw data table organized like the bad case at first, because the software to collect the raw data and organize them in this way, for example, google From apps. To deal with these data, I have to transform the raw data before I import them to R. A reproducible way is to transform them in use of the R codes. The functions have to isolate which columns are index and which columns are raw responses. To my knowledge, a code book is needed to define the columns to be arranged.

