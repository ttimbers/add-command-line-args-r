"This script calculates the sum of two numbers.

Usage: sum.R <num1> <num2>
" -> doc


library(tidyverse)
library(docopt)

opt <- docopt(doc)

main <- function(opt) {
  
  sum <- as.numeric(opt$num1) + as.numeric(opt$num2)
  paste0("The sum of ", opt$num1, " and ", opt$num2, " is ", sum) |> 
    print()
}

if (!interactive()) {
  main(opt)
}