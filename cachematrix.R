
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inversed <- NULL
  set <- function(m){
    x <<- m
    inversed <<- NULL
  }
  
  get <- function() x
  
  setInversed <- function(inv) inversed <<- inv
  
  getInversed <- function() inversed
  list(set=set,get=get,setInversed=setInversed,getInversed=getInversed)
  
}

## Write a short comment describing this function
cacheSolve <- function(m,...){
  if (is.null( m$getInversed()))
    message("Cache missed")
    m$setInversed(solve(m$get()))
  m$getInversed()
}
