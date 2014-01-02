getReps <- function(M,N) sum(duplicated(sample(1:M, N, replace=TRUE)))
