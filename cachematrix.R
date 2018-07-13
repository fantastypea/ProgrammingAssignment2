## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y){
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinvers <- function(inver) i <<- inver 
    getinvers <- function() i
    list(set=set,get=get,setinvers=setinvers,getinvers=getinvers)
    }


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    i <- x$getinvers()
    if(!is.null(i)){
        message("getting cached data")
        return(i)
    }
    i <- solve(x$get(), ...)
    x$setinvers(i)
    i
    }
    
    