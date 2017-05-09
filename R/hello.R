# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

hello <- function() {
  print("Hello, world!")
}

#' Filter
#'
#' Function to filter lowly expressed genes
#'
#' A gene is retained if it has at least nreads reads in at least nsamples
#' samples.
#'
#' @param x a matrix.
#' @param nsamples number of samples.
#' @param nreads number of reads.
#'
#' @return A logical vector indicating whether the gene has to be retained.
filter <- function(x, nsamples, nreads) {
  return(rowSums(x >= nreads) >= nsamples)
}

