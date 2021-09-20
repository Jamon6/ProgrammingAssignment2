## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
This function can calculate the value/ mean of the vector. 
First of all, it is checked whether this vector has already been calculated.

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y){
                x <<- y
                inv <<- NULL
        }
        get <- function() {x}
        setInverse <- function(inverse) {inv <<- inverse}
        getInverse <- function (){inv}
        list(set, get = get, setInverse = setInverse, getInverse = getInverse)


## Write a short comment describing this function
With this function I create a matrix that can cache its inverse.
        
cacheSolve <- function(x, ...) {
        inv <- x$getInverse()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv ## Return a matrix that is the inverse of 'x'
