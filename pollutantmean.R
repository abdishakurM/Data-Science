pollutantmean <- function(directory, pollutant, id){
        fileslist <- list.files(directory, full.names = TRUE)
        data <- NA
        for(i in id){
                file_data <- read.csv(fileslist[i])
                data <- rbind(data,file_data)
        }
        mean(data[[pollutant]],na.rm = TRUE)
        
}


dir <- 'C:/Users/Abdishakur/Desktop/specdata/specdata'

pollutantmean(dir, "sulfate", 1:10)
pollutantmean(dir, "nitrate", 70:72)
pollutantmean(dir, "nitrate", 23)