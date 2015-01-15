## Put comments here that give an overall description of what your
## functions do. There are 2 functions one to create a special matrix object
## which is a list of functions and the other function to call this special
## functionto first check if the matrix inverse is in the cache is exits then
## uses the cache otherwise calculates the inverse of the data using Solve and
## sets the inverse of the matrix in the cache

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	m<-NULL
	set <- function(y){
		x <<-y
		m <<-NULL
	}
	get<-function() x
	setinverse <- function(inverse) m <<- inverse
	getinverse <- function() m
	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m <- x$getinverse()
	if(!is.null(m){
		message("getting cached data")
		return(m)
	}
	data <-x$get()
	m <- solve(data, ...)
	x$setinverse(m)
	m
}
