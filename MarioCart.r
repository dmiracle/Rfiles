MCRand <- function(){x <- c(15,12,10,8,7,6,5,4,3,2,1,0)
                     GameSeries <- sample(x)
                     GameSeries <- rbind(GameSeries, sample(x))
                     GameSeries <- rbind(GameSeries, sample(x))
                     GameSeries <- rbind(GameSeries, sample(x))
                     return(colSums(GameSeries))
}

MCRun <- function(runs){
  big <- replicate(runs, MCRand())
  return(big)
}



MCPlot <- function(big){
  bigsort <- apply(big, 2, sort)
  boxplot(t(bigsort))
  return(bigsort)
}

MCfull <- function(runs){
  bigsort <- MCPlot(MCRun(runs))
  return(bigsort)
}
