## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, message = FALSE---------------------------------------------------
library(hclust1d)

## ----supported_methods--------------------------------------------------------
supported_methods()

## ----average------------------------------------------------------------------
points <- rnorm(10)

res <- stats::hclust(stats::dist(points), method = "average")
res <- hclust1d(stats::dist(points), method = "average", distance = TRUE)

## ----dist_supported_methods---------------------------------------------------
supported_dist.methods()

## ----minkowski----------------------------------------------------------------
points <- rnorm(10)

res <- stats::hclust(stats::dist(points, method = "minkowski", p=3), method="average")
res <- hclust1d(stats::dist(points, method = "minkowski", p=3), method="average", distance = TRUE)

## ----eval=FALSE---------------------------------------------------------------
#  res <- stats::hclust(squared_d, method = linkage_function_name, members = NULL)

## ----eval=FALSE---------------------------------------------------------------
#  res <- hclust1d(squared_d, method = linkage_function_name, distance = TRUE, square = TRUE)

## ----eval=FALSE---------------------------------------------------------------
#  res <- stats::hclust(squared_d, method = linkage_function_name, members = NULL)

## ----eval=FALSE---------------------------------------------------------------
#  res <- hclust1d(d, method = linkage_function_name, distance = TRUE)

## ----eval=FALSE---------------------------------------------------------------
#  res <- stats::hclust(squared_d, method = linkage_function_name, members = NULL)

## ----eval=FALSE---------------------------------------------------------------
#  res <- hclust1d(points, method = linkage_function_name)

## ----eval=FALSE---------------------------------------------------------------
#  res <- stats::hclust(d, method = linkage_function_name, members = NULL)

## ----eval=FALSE---------------------------------------------------------------
#  res <- hclust1d(d, method = linkage_function_name, distance = TRUE)

## ----eval=FALSE---------------------------------------------------------------
#  res <- stats::hclust(d, method = linkage_function_name, members = NULL)

## ----eval=FALSE---------------------------------------------------------------
#  res <- hclust1d(points, method = linkage_function_name)

