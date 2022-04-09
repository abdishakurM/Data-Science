complete <- function(directory,id){
        # Load files from the directory
        fileslist <- list.files(directory, full.names = TRUE)
        target <- fileslist[id]
        
        ids <- vector()
        nobs <- vector()
        i <- 1
        for(file in target){
                ids = c(ids,id[i])
                nobs = c(nobs,sum(complete.cases(read.csv(file)))) 
                i <- 1 +1
        }
        data.frame(id = ids, nobs = nobs)
}

dir <- 'C:/Users/Abdishakur/Desktop/specdata/specdata'

complete(dir, 1)
complete(dir, c(2, 4, 8, 10, 12))
complete(dir, 30:25)
complete(dir, 3)