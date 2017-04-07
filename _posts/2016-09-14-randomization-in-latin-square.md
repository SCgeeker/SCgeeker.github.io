---
layout: post
title:  Randomization in Latin Square
date: 2017-04-07
published: true
categories: [Experiment_Design, Opensesame]
---

I'm managing an opensesame script for the coming project. In this project, there are four stimuli lists included all the within-participant conditions. I denote the four lists **A**, **B**, **C**, and **D**. A participant will have one of the stimuli lists in terms of the counter balanced principle. The best assignment method is 4X4 Latin Square. For every 16 participants, there are 24 sequences to be used. Here are three of the sequences.  


```
##      [,1] [,2] [,3] [,4]
## [1,] "A"  "B"  "C"  "D" 
## [2,] "B"  "C"  "D"  "A" 
## [3,] "C"  "D"  "A"  "B" 
## [4,] "D"  "A"  "B"  "C"
```

```
##      [,1] [,2] [,3] [,4]
## [1,] "C"  "D"  "A"  "B" 
## [2,] "D"  "A"  "B"  "C" 
## [3,] "A"  "B"  "C"  "D" 
## [4,] "B"  "C"  "D"  "A"
```

```
##      [,1] [,2] [,3] [,4]
## [1,] "A"  "B"  "C"  "D" 
## [2,] "D"  "A"  "B"  "C" 
## [3,] "C"  "D"  "A"  "B" 
## [4,] "B"  "C"  "D"  "A"
```

If this experiment will recruit 32 participant, the first 16 and second 16 better obtain one of the 24 sequences in a pseudo randomization. On the other hand, I wish to reproduce this random sequence in the other place. The best way is to generate the randomization sequence in terms of a seed. Thanks to [Opensesame](http://osdoc.cogsci.nl/), I found the way to make this plan come true.   

Opensesame is the open source experiment software. Because it is developed in [python](https://www.python.org/), the users are able to create the function based on their need. This program offers the object **inline_script** where the users put the python codes. I created the python codes to select the stimuli list from the file pool. You can use it before the program runs the object **loop** based on the list.  

```
### Get the subject number
nr = self.get('subject_nr')

### Generate a random sequence based the prior seed
### Defind seed by yourself
import random
SEED = 345

seq = [0,4,8,12]
random.seed(SEED)
random.shuffle(seq)

### Shift the subject numbers
### Push to the next sequence
if nr <=16:
	nr += seq[0]
elif nr > 16 & nr <= 32:
	nr += seq[1]
elif nr > 32 & nr <= 48:
	nr += seq[2]
else:
	nr += seq[3]

### Assign the list in one Latin Squane
if (nr / 4) % 4 == 1:
	if nr % 4 == 0:
		lst = 'List01.csv'
	elif nr % 4 == 1:
		lst = 'List02.csv'
	elif nr % 4 == 2:
		lst = 'List03.csv'
	else:
		lst = 'List04.csv'
elif (nr / 4) % 4 == 2:
	if nr % 4 == 1:
		lst = 'List01.csv'
	elif nr % 4 == 2:
		lst = 'List02.csv'
	elif nr % 4 == 3:
		lst = 'List03.csv'
	else:
		lst = 'List04.csv'
elif (nr / 4) % 4 == 3:
	if nr % 4 == 2:
		lst = 'List01.csv'
	elif nr % 4 == 3:
		lst = 'List02.csv'
	elif nr % 4 == 0:
		lst = 'List03.csv'
	else:
		lst = 'List04.csv'
else:
	if nr % 4 == 3:
		lst = 'List01.csv'
	elif nr % 4 == 0:
		lst = 'List02.csv'
	elif nr % 4 == 1:
		lst = 'List03.csv'
	else:
		lst = 'List04.csv'

### Output [List] to the loop object
exp.set('List', lst)
```
