makeCacheMatrix <- function(x = matrix()) {inverse<-NULL, set<-function(y){x<<-y,m<<-NULL
                                                                           	get <- function() x
	setinverse <- function(i) inverse <- i
	getinverse <- function() inverse
	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


cacheSolve <- function(x, ...) {inverse <- x$getinverse()
        if(!is.null(inverse)) {
        	message("getting cached inverse")
        	return(inverse)
        }
        data <- x$get()
        inverse <- solve(data, ...)
        x$setinverse(inverse)
        inverse
 
}
data <- matrix(c(1, 1, 4, 0, 3, 1, 4, 4, 0), nrow=3, ncol=3)
 makeCacheMatrix <- function(x = matrix()) {

}
makeVector <- function(x = numeric()) { ##define the arguement with model matrix
m <- NULL ##the value of matrix inverse
set <- function(y) { ##assign a new variable with function(y)
x <<- y ##value of matrix
m <<- NULL ##if it is a new matrix, reset value to NULL
}
get <- function() x ##assign a new variable with function(x)
setmean <- function(mean) m <<- mean ##assign a new variable with (function(mean), reset value m to mean
getmean <- function() m ## get the value of m where is called
list(set = set, get = get, ## you need this to run the function within the list
setmean = setmean,
getmean = getmean)
}

Write a short comment describing this function
cacheSolve <- function(x, ...) { ## this function represents that cacheSolve is assigned by a new function, if the function works, then the result will be calculated
## Return a matrix that is the inverse of 'x'                                          
