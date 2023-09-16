---
jupytext:
  formats: md:myst
  text_representation:
    extension: .md
    format_name: myst
jupyter:
  kernelspec:
    display_name: R
    language: R
    name: ir
---

# Test with Rmd

Here is a test

```{code-cell} r
library(ggplot2)

pl <- ggplot(iris, aes(Sepal.Length, Sepal.Width, colour=Species)) +
    geom_point()

pl
```
