makeCacheMatrix <- function(x = matrix()) { #sets the function of the matrix
  Inv <- NULL
  set <- function(y) {
    x <<- y
     Inv<<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) Inv <<- inverse
  getInverse <- function() {Inv}
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

cacheInverse <- function(x, ...) { #Helps to return the matrix that represents inverse of x
  Inv <- x$getInverse()
  if(!is.null(Inv)) {
    message("getting cached data")
    return(Inv)
  }
  end <- x$get()
  inv <- solve(end, ...)
  x$setInverse(m)
  Inv
}
