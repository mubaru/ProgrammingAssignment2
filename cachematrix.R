## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function lists both the given matrix and it's inverse.

makeCacheMatrix <- function(x =matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) m <<- inverse
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
  
}


## Write a short comment describing this function

## This function checks, if the given list contains the inverse matrix
## beside the original matrix. If it is there then this function lists 
## both of them, if the solved one is missing then it calculates it.

cachesolve <- function(x, ...) {
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
}

