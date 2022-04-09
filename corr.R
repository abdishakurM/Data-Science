corr <- function (directory, threshold = 0){
        fileslist <- list.files(directory, full.names = TRUE)
        
        vec <- NA
        
        for (file in fileslist){
                fileData <- read.csv(file)
                if(sum(complete.cases(fileData)) > threshold){
                        fileData <- subset(fileData,complete.cases(fileData))
                        corr <- cor(fileData$sulfate , fileData$nitrate )
                        vec <- c(vec, corr)
                }
        }
        vec
}

