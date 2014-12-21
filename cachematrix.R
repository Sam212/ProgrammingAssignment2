## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	Inv <- NULL
	set <- function(y){
		Inv<<- NULL
		x <<- y
	} 
	get <- function() x
	setInv <- function(calcInv) Inv <<-calcInv
	getInv <-function() Inv
	list(set = set,get = get, setInv = setInv, getInv = getInv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getInv()
        if(!is.null(inverse)){
        	message("getting cached data")
        	return(inverse)
        }
        mat <- x$get()
        inverse <- solve(mat,...)
        x$setInv(inverse)
        inverse
}
