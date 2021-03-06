## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The two functions created are: makeCacheMatrix and cacheSolve makeCacheMatrix function creates a special "matrix" object that can cache its inverse or store the matrix and its inverse. 
## First initialize the two objects x and n1, where x is the argument to be passed when testing in makeCacheMatrix for the matrix and n1 will be used later in the function for the matrix inverse.

makeCacheMatrix <- function(x = matrix()) {
  
  j<-NULL 
  set<-function(y){
    x<<-y
    j<<-NULL
  }
  get<-function()x
  setInverse<-function(inverse)j<<-inverse
  getInverse<-function()j
  list(set=set,get=get,
       setInverse=setInverse,
       getInverse=getInverse)
  }


## Write a short comment describing this function
##  This function computes the inverse of the special "matrix" created by 
## makeCacheMatrix above. If the inverse has already been calculated (and the 
## matrix has not changed), then it should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  j<-x$getInverse()
  if(!is.null(j)){
    message("getting cache data")
    return(j)
  }
  mat<-x$get()
  j<-solve(mat,...)
  x$setInverse(j)
  j}
