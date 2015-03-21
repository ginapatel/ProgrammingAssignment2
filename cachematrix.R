## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a "matrix",  which contains a function to set the values of the matrix, get the value of the matrix, set the value of the inverse of the matrix and get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)

}


## Write a short comment describing this function
## Calculates the inverse of the matrix, however will check to see if the inverse has already been solved and if so will get nthe inverse from the cache and skips the compuation. Otherwise this function will calculate the invers of the matrix via the setmatrix function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m

}
