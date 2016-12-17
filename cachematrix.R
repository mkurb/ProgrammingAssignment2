##The two functions will calculate the inverse matrix or retrive the inverse matrix from the chache when provided with an invertible matrix.

## The function below creates a special matrix object that can cache its inverse. It has two nested functions
## set and get. The use is described in the comments in the code.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set < - function (y) ## it changes the vector stored in the main function 
                (
                        x <<- y
                        m <<- NULL
                        }
        get <- function() x ## it returns the vector x stored in the main function
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m ## setinverse and getinverse are just used as intermediary variables
        list(set = set, get = get, setinverse = set inverse, getinverse = getinverse)
                }


## The below function computes the inverse of the value returned from the above function.
cacheSolve <- function(x, ...) {
        m <- x$getinverse() ## Return a matrix that is the inverse of 'x'
        if(!is.null(m))
                {
                message("getting cached data")
                return(m)
                }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
