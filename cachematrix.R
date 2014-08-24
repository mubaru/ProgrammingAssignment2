## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function lists both the given matrix and it's inverse.

makeCacheMatrix <- function(x) {
  y <- solve(x)
  return(list(original = x, solved =y))
  
}


## Write a short comment describing this function

## This function checks, if the given list contains the inverse matrix
## beside the original matrix. If it is there then this function lists 
## both of them, if the solved one is missing then it calculates it.

cachesolve <- function(x) {
  n <- x$solved
  if(!is.null(n)) {
    message("getting cached data")
    return(n)
  }
  data <- x$original
  
  x$solved <- solve(data)
  return(x)
}

