# This program extracts n characters from a string.

# Input:
#   string: A character vector.
#   n: The number of characters to extract.

# Output:
#   A character vector of length n.

# Run 'Rscript main.R'

extract_n_characters <- function(string, n) {  
  substr(string, 1, n)
}


string <- "Hello, world!"

extract_n_characters(string, "5")