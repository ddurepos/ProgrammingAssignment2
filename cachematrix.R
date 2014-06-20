## The goal of these functions are to cache the inverse of a matrix.

## This function will create a matrix.  It will set the value of the matrix, get the value of the matrix and then set the inverse
## of the matrix and get the value of the inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x<<-y
                m<<-NULL
        }
        get <- function()x
        setmatrix<-function(solve) m <<- solve
        getmatrix<-function() m
        list(set=set, get=get,
                setmatrix=setmatrix,
                getmatrix=getmatrix)
}

## This function determines if the inverse of the matrix has already been calculated, if so it will take it from the cache and skip the 
## computation.

cacheSolve <- function(x, ...) {
        m <- x$getmatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(matrix, ...)
        x$setmatrix(m)
        m
      
}
