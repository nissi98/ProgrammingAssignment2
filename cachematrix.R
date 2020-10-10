## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## These functions are used to get the matrix of x and to get the inverse of the matrix(x)

makeCacheMatrix <- function(x = matrix()) {
      inv <- NULL
      set <- function(y){
            x <<- NULL
            inv <<- NULL
      }    ## This is the function used to get the matrix of x
      get <- function() {x}
      setInverse <- function(inverse) {inv <<- inverse}
      getInverse <- function() {inv}  ## This is the function used to obtain the inverse of the matrix
      list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
      

}


## Write a short comment describing this function
## This is used to get the cache data

cacheSolve <- function(x, ...) {
      inv <- x$getInverse()
      if(!is.null(inv)){         ##checking whether inverse is null
            message("getting cached data")
            return(inv)  ##returns inverse values
      }
      mat <- x$get()
      inv <- solve(mat, ...)
      x$setInverse(inv)
      inv
        ## Return a matrix that is the inverse of 'x'
}
