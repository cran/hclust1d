## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
set.seed(2)

## ----setup, message = FALSE---------------------------------------------------
library(hclust1d)

## ----points-------------------------------------------------------------------
points <- rnorm(10)

## -----------------------------------------------------------------------------
result <- hclust1d(points)

## ----plot, fig.height=4, fig.width=6, small.mar=TRUE--------------------------
plot(result)

## ----plot_named, fig.height=4, fig.width=6, small.mar=TRUE--------------------
names(points) <- paste("point", 0:9, sep = "-")
result <- hclust1d(points)
plot(result)

## ----print--------------------------------------------------------------------
print(result)

## ----dendrogram_plot, fig.height=4, fig.width=6, small.mar=TRUE---------------
dendrogram <- as.dendrogram(result)
plot(dendrogram, type = "triangle", ylab = "Height")

## ----link, fig.height=4, fig.width=6, small.mar=TRUE--------------------------
result <- hclust1d(points, method = "mcquitty")
plot(result)

## ----points_or_dist, fig.height=4, fig.width=6, small.mar=TRUE----------------
result_points <- hclust1d(points, method = "single")
plot(result_points)

distances <- dist(points)

result_dist <- hclust1d(distances, distance = TRUE, method = "single")
plot(result_dist)

## ----squared, fig.height=4, fig.width=6, small.mar=TRUE-----------------------
result_points <- hclust1d(points, method = "ward.D")
plot(result_points)

distances <- dist(points)

result_dist <- hclust1d(distances, distance = TRUE, method = "ward.D")
plot(result_dist)

squared_distances <- distances ^ 2

result_dist <- hclust1d(squared_distances, distance = TRUE, squared = TRUE, method = "ward.D")
plot(result_dist)

## ----stats_hclust, fig.height=4, fig.width=6, small.mar=TRUE------------------
result_dist_stats_hclust <- stats::hclust(squared_distances, method = "ward.D")
plot(result_dist_stats_hclust)

## ----wards--------------------------------------------------------------------
distances <- dist(points)

result_ward.D <- hclust1d(distances, distance = TRUE, method = "ward.D")
result_ward.D2 <- hclust1d(distances, distance = TRUE, method = "ward.D2")

print(result_ward.D$height)
print(result_ward.D2$height ^ 2)

## ----wards_hclust-------------------------------------------------------------
distances <- dist(points)
squared_distances <- distances ^ 2

result_ward.D_stats_hclust <- stats::hclust(squared_distances, method = "ward.D")
result_ward.D2_stats_hclust <- stats::hclust(distances, method = "ward.D2")

print(result_ward.D_stats_hclust$height)
print(result_ward.D2_stats_hclust$height ^ 2)

## ----cutting, fig.height=4, fig.width=6, small.mar=TRUE-----------------------
result <- hclust1d(points)
plot(result)

## ----heights------------------------------------------------------------------
print(result$height)

## ----cutting_n_1--------------------------------------------------------------
n_minus_one_clusters <- stats::cutree(result, h = result$height[1])
print(n_minus_one_clusters)

## ----cutting_1----------------------------------------------------------------
one_cluster <- stats::cutree(result, h = result$height[9])
print(one_cluster)

## ----cutting_3----------------------------------------------------------------
three_clusters <- stats::cutree(result, h = 1.0)
print(three_clusters)

## ----cutting_3_alt------------------------------------------------------------
alt_three_clusters <- stats::cutree(result, k = 3)
print(alt_three_clusters)

