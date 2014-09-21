## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function( m = matrix() ) {   
     

  i <- NULL
  
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
  } 
     
 
  get <- function() {
       
    m    
  }
  
  
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  
  getInverse <- function() {
    
    i
  }
  
     

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    
    m <- x$getInverse()
    
    
    if( !is.null(m) ) {
      message("getting stored data")
      return(m)
    }
    
    data <- x$get() 
    m <- solve(data) %*% data
    x$setInverse(m)
    m
  
}
