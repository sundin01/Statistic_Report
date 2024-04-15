data_import <- function(file_name = "../Statistic_Report/data/data.csv" ){
  name.of.file <- file_name
  # If do not exists such a file, create it!
  if (!file.exists(name.of.file)){
    txt_file <- read.delim("../data-raw/raw_data.txt", sep = ";")
    # Write a CSV file in the respiratory
    write_csv(txt_file, "../data/data.csv")
    # Read the file
    data <- read_csv("../data/data.csv")
    # If exists such a file, read it only!
  }else{data <- read_csv("../data/data.csv")}

  return(data)}
