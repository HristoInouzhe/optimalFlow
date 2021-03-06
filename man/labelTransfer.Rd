% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/labelTransfer.R
\name{labelTransfer}
\alias{labelTransfer}
\title{labelTransfer}
\usage{
labelTransfer(
  training.cytometry,
  test.cytometry,
  test.partition,
  equal.weights = FALSE
)
}
\arguments{
\item{training.cytometry}{List of partitions, where each partition is a dataframe where the last column contains the labels of the partition.}

\item{test.cytometry}{Test data, a dataframe without labels.}

\item{test.partition}{Labels of a partition of the test data.}

\item{equal.weights}{If True, weights assigned to every cluster in a partion are uniform (1/number of clusters) when calculating the similarity distance. If False, weights assigned to clusters are the proportions of points in every cluster compared to the total amount of points in the partition.}
}
\value{
A fuzzy relabeling consistent of a transportation plan.
}
\description{
Label transfer between a test partition and a training set of partitions.
}
\examples{
\donttest{
data.example <- data.frame(v1 = c(rnorm(50, 2, 1), rnorm(50, -2, 1)),
                          v2 = c(rnorm(50, 2, 1), rnorm(50, -2, 1)), id = c(rep(0, 50), rep(1, 50)))
test.labels <- c(rep('a', 50), rep('b', 50))
labelTransfer(data.example, data.example[, 1:2], test.labels)
}
}
