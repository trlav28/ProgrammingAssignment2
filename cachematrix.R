## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This function sets the matrix x to a new matrix y, and sets the
# inverse equal to NULL. Then returns the matrix x. Then sets the 
# inverse i equal to solve. Then returns a list of the functions. 

makeCacheMatrix <- function(x = matrix()) {
	     i <- NULL
     set <- function(y){
          x <<- y
          i <<- NULL
     }
     get <- function() x
     setinverse <- function(solve) i <<- solve
     getinverse <- function() i
     list(set = set, get = get,
          setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
# This function checks to see if we have the inverse of the matrix
# already cached and if so it grabs it. If we don't, it calculates
# the inverse and returns it. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
             i <- x$getinverse()
     if(!is.null(i)){
          message("Getting cached data")
          return(i)
     }
     data  <- x$get()
     i <- solve(data, ...)
     x$setinverse(i)
     i
}
