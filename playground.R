test <- data.frame(
  text = c("a", "b", "c", "d", "e"),
  number = c(1, 2, 3, 4, 5),
  bool = c(TRUE, FALSE, TRUE, FALSE, FALSE),
  factor = as.factor(c(
    "Group 1", "Group 1", "Group 2", "Group 2", "Group 3"
  ))
)

test

catDataframe <- function(data) {
  cols <- list
  cols <- list(colnames(data))
  print(cols)
  #print(data$cols[1])
  
}

cols <- list()

for (col in colnames(test)) {
  print(test[col])
  cols[[col]]["name"] <- col
  cols[[col]]["class"] <- class(test[col])
  cols[[col]]["values"] <- test[col]
}

for (x in cols) {
  print(x)
}

list_col <- "text"

element_col <- as.character(cols[[list_col]]["name"])
element_values <- as.character(cols[[list_col]]["values"])

#if first data.frame(\n\t
cat(sprintf("data.frame(%s = %s)", element_col, element_values))
#if last

