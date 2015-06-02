concatenatedList <- function() {

  # working directory
  setwd("original_data/names/")

  result <- list()  # empty list
  filenamesByAYear <- dir(pattern = ".txt")

  for(filename in filenamesByAYear){
    print(filename)
    yearAsString <- c(substr(filename, 4, 7))
    aTable <- read.csv(filename, header=FALSE)
    aTableWithYear <- merge(aTable, yearAsString)

    # `names` means 'Names these columns'
    names(aTableWithYear) <- c('name', 'gender', 'count', 'year')

    # `rbind` means 'row-bind'. Combine R Objects by Rows
    result <- rbind(result, aTableWithYear)
  }

  # working directory
  setwd("../../")

  return(result)
}


# ===========
#    START
# ===========
data <- concatenatedList()
write.table(data, "cocatenaed.names.csv", sep="," ,row.names=FALSE)
