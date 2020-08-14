## Put comments here that give an overall description of what your
## functions do

## I made some minor changes on funciton given by task, 
## changed mean function to the inverse and renamed getmean and setmean function to the
## matrix

makeCacheMatrix <- function(x = matrix()) {
                  inv <- NULL
                  set <- function(y = matrix()){
                    x <<- y
                    inv <<- NULL 
                  }
                  get <- function() x
                  setinverse <- function(solve) inv <<- solve
                  getinverse <<- function() inv
                    list(set=set, get=get,
                       setinverse = setinverse,
                       getinverse = getinverse)
}

## The same approach, made somesetups to make function check the cached value of an inverse of a
## matrix, if inverse is not cached "solve" function solve it, cach it and return


cachesolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)){
    message("gettng cached inverse of a matrix")
    return(m)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}

