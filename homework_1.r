---
title: "Homework 1"
author: "Luke Bennett"
date: "9/5/2021"
output: pdf_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

# Problem 1

Find the numeric answers of the following mathematical expressions (up to 2 decimal
places if the answer is not an integer).

(a) 6 + 5 − 4 / 3^2
```{r}
x <- 6 + 5 - 4 / 3^2
round(x, 2)
```

(b) exp( sqrt ((14 + 13) / (12 + 11)))

```{r}
y <- exp( sqrt ((14 + 13) / (12 + 11)))
round (y, 2)
```

(c) ((11+12!) / (13!+14))^2

```{r}
fact = function(n){
  x <- 1:n
  if (n == 0){
    return(1)
  }
  else if (n == 1){
    return(1)
  }
  else if (n >= 2)
    x[1] = 1
    x[2] = 2
    for (i in 2:n){
      
      x[i] = i * x[i-1]
      
    }
print(x[n])
}
z <- ((11+fact(12)) / (fact(13)+14))^2
round(z, 2)
```

# Problem 2

The monthly sales figures of Hummer H2 vehicles in the U.S. during 2002 were 2700,
2600, 3050, 2900, 3000, 2500, 2600, 3000, 2800, 3200, 2800, 3400. Please answer the
following questions.
(a) Enter this data into a data vector called 

```{r}
H <- c(2700, 2600, 3050, 2900, 3000, 2500, 2600, 3000, 2800, 3200, 2800, 3400)
print(H)
```


(b) Name the data vector with the month abbreviation

```{r}
names(H) <- c('jan', 'feb', 'mar', 'apr', 'may', 'jun', 'jul', 'aug', 'sept', 'oct', 'nov', 'dec')
print(H)

```


(c) What is the total number of Hummer H2 sold in 2002?

```{r}
sales_2002 <- sum(H)
print(sales_2002)
```

(d) Using diff(), find the month with the greatest increase from the previous month,
and the month with the greatest decrease from the previous month

```{r}
delta_H <- diff(H)
names(delta_H) <- c('feb', 'mar', 'apr', 'may', 'jun', 'jul', 'aug', 'sept', 'oct', 'nov', 'dec')

best_inc <- max(delta_H)
best_dec <- min(delta_H)


which(delta_H == best_inc, arr.ind=T)
print(best_inc)

which(delta_H == best_dec, arr.ind=T)
print(best_dec)

```