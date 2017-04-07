---
layout: post
title:  Vectors in mathematics and in codes
date: 2017-04-07
categories: [R_programming, statistics, latex]
---
When a set of data/observations is imported to R, it is usually treated as `vector`. Vector has two mathematical forms as following:  

**column vector**:  
$$ \vec{a} = \begin{bmatrix}
 1\\
 2\\
 3\\
\end{bmatrix} $$  
**row vector**:  
$$ \vec{a} = [ 1\ 2\ 3 ] $$

Default form of vector in R is column vector. More precisely, it is treated as a matrix:  

```r
a <- 1:3
a
```

```
## [1] 1 2 3
```

```r
class(a)
```

```
## [1] "integer"
```

```r
str(a)
```

```
##  int [1:3] 1 2 3
```

```r
t(a)
```

```
##      [,1] [,2] [,3]
## [1,]    1    2    3
```

In a statistical work, we used to calcuate the sum of square (SS) for the deviations to mean. The common equation is like:  
$$ \sum_{i=1}^{n}(Y_{i}-\overline{Y})^2 $$  

This is the fundemental for calculating the variance of this set of data/observations. The equation of variance is like this:  
$$ \frac{\sum_{i=1}^{n}(Y_{i}-\overline{Y})^2}{n} $$  

Because the data/observations are treated as matrix, we are able to have the sum of square by the multiplication of this matrix.  
$$ \mathbf{A'A} = 
\begin{bmatrix} A_1 A_2 A_3 \dots\end{bmatrix}
\times
\begin{bmatrix}
   A_1 \\
   A_2 \\
   A_3 \\
   \vdots
\end{bmatrix}　$$　　

Here are ten observations 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, the average of this data is 5.5. Let's have the SS and variance in use of the multiplication of matrix:  

```r
SS <- t(1:10 - mean(1:10)) %*% (1:10 - mean(1:10)) 
VAR <- SS/length(1:10)
SS
```

```
##      [,1]
## [1,] 82.5
```

```r
VAR
```

```
##      [,1]
## [1,] 8.25
```

In R `base` package, the function `var` outputs a sampling variance, not a population variance as above.

```r
var(1:10)
```

```
## [1] 9.166667
```

