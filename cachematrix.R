
## makeCacheMatrix create a new matrix concept with inversed cache attribute.
## You can set matrix many times by calling set method.
## getInversed method returns inversed matrix if and only if you set inversed before by calling setInversed

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

## Inversion algorithm is encapsulated in cacheSolve function.
## If cacheSolve called before for unchanged matrix it will return inversed matrix from cache. In the other way it inverse cache and set in matrix cache.
cacheSolve <- function(m,...){
  if (is.null( m$getInversed()))
    message("Cache missed")
    m$setInversed(solve(m$get()))
  m$getInversed()
}
