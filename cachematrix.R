## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

> ##Create new function that creates a special "matrix" object that can cache its inverse
  > ##set the value of the matrix
  > ##get the value of the matrix
  > ##set the value of the inverse
  > ##get the value of the inverse
  > 
  > 
  > makeCacheMatrix <- function(x = matrix()) {
    +     m <- NULL # sets the value of m to NULL (creates default if cacheSolve has not yet been used)
    +     y <- NULL # sets the value of y to NULL (creates default if cacheSolve has not yet been used)
    +     setmatrix <- function(y) { #set the value of the matrix
      +         x <<- y ## caches the inputted matrix so that cacheSolve can check whether it has changed (note this is within the setmatrix function)
      +         m <<- NULL # # sets the value of m (the matrix inverse if used cacheSolve) to NULL
      +     }
    +     # Parts removed
      +     list(setmatrix = setmatrix, getmatrix = getmatrix, # creates a list to house the four functions
                 +          setinverse = setinverse,
                 +          getinverse = getinverse)
    + }
> makeCacheMatrix
function(x = matrix()) {
  m <- NULL # sets the value of m to NULL (creates default if cacheSolve has not yet been used)
  y <- NULL # sets the value of y to NULL (creates default if cacheSolve has not yet been used)
  setmatrix <- function(y) { #set the value of the matrix
    x <<- y ## caches the inputted matrix so that cacheSolve can check whether it has changed (note this is within the setmatrix function)
    m <<- NULL # # sets the value of m (the matrix inverse if used cacheSolve) to NULL
  }
  # Parts removed
  list(setmatrix = setmatrix, getmatrix = getmatrix, # creates a list to house the four functions
       setinverse = setinverse,
       getinverse = getinverse)
}
> 
  > 
  > ## create new function cacheSolve that computes the inverse of the special "matrix" 
  > ## returned by makeCacheMatrix above. 
  > ## If the inverse has already been calculated (and the matrix has not changed), 
  > ## then cacheSolve should retrieve the inverse from the cache.
  > 
  > cacheSolve <- function(x, ...) {
    +     i <- x$getinverse()
    +     if (!is.null(i)) {
      +         message("getting cached data")
      +         return(i)
      +     }
    +     data <- x$get()
    +     i <- solve(data, ...)
    +     x$setinverse(i)
    +     i
    + }
> 
  > cacheSolve
function(x, ...) {
  i <- x$getinverse()
  if (!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}