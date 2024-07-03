## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

inver<-NULL                                                                     ##setting inverse as NULL
set<-function(y){
  x<<-y
inver<<-NULL
}

get<-function() x                                                               ##function to obtain matrix x
setInverse<-function(solveMatrix) inver<<-solveMatrix                           
getInverse<-function() inver                                                    ##Function to obtain inverse
list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)                    
}
## Write a short comment describing this function
        ## Return a matrix that is the inverse of 'x'



cacheSolve <- function(x, ...) {                                                ##Obtaining Cache data                           ``
  inver<-x$getInverse()                                                         ##evaluate if inverse is NULL
  if(!is.null(inver)) {
    message("getting cached data!")
  return(inver)}                                                                ##returns inverse value
  

  data<-x$get()
  inver<-solve(data,...)                                                        ##compute inverse
  x$setInverse(inver)                                                           ## function returns inverse matrix of x
  inver
}