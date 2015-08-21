## first function is used to create an object in different environment
## second function is used to compute the inverse matrix

## creat a matrix 

makeCacheMatrix <- function(x = matrix()) {
 s <- NULL
         set <- function(y) {
                 x <<- y
                 s <<- NULL
         }
         get <- function() x
         setinverse <- function(solve) s <<- solve
         getinverse <- function() s
         list(set = set, get = get,
              setinverse = setinverse,
              getinverse = getinverse)
}


## give out the inverse matrix


cacheSolve <- function(x, ...) {
      s <- x$getinverse()
         if(!is.null(s)) {
                 message("getting cached data")
                 return(s)
         }
         data <- x$get()
         s <- solve(data, ...)
         x$setinverse(s)
         s

}
