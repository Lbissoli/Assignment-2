## Inverse Matrix

## To Run:
##  to_invert <- matrix(c(1, -1, -2, 2, -3, -5, -1, 3, 5), 3, 3, TRUE)
##  invert <- makeCacheMatrix(to_invert)
##  cacheSolve(invert)

## Create the object for an invertale all matrix.

makeCacheMatrix <- function(x = matrix()) {

              Inver_cache <- NULL
              
              set <- function(y) {
                    x <<- y
                    Inver_cache <<- NULL
              }
              
              get <- function() x
              set_Inver <- function(inverse) Inver_cache <<- inverse
              get_Inver <- function() Inver_cache
              
              list(set = set, get = get,
              set_Inver = set_Inver,
              get_Inver = get_Inver)
  
}


## Return the inverse of matrix 

cacheSolve  <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
              Func_Inver <- x$get_Inver()
                      if(!is.null(Func_Inver)) {
                          message("getting cached data")
                      return(Func_Inver)
              }
              
              xdata <- x$get()
              
              Func_Inver <- solve(xdata, ...)
              x$set_Inver(Func_Inver)
              Func_Inver
}
