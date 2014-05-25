## These two sets of function intends to calculate the inverse of a matrix and caches it 

## This function creates a special matrix which has a list of 
## functions to,
## Set the value of Matrix
## Get the value of Matrix
## Set the inverse of Matrix
## Get the inverse of Matrix

makeCacheMatrix <- function(x = matrix()) {
	i<- NULL
	set <- function(y) {
                x <<- y
                i <<- NULL
        }
	get <- function() x
	setinverse <- function(inverse) i <<- inverse
	getinverse <- function() i
	list(set = set, get = get,
		setinverse = setinverse,
		getinverse = getinverse)
}


## This function calculates the inverse of special matrix
## if already calculated, cached inverse is returned instead

cacheSolve <- function(x, ...) {
	i <- x$getinverse()
	if(!is.null(i)) {
		message("getting cached data")
		return(i)
	}
	data <- x$get()
	i <- solve(data)	
	x$setinverse(i)
	i
}
