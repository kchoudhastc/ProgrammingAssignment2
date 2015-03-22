## Put comments here that give an overall description of what your
## functions do

##makeCacheMatrix is a function to build a matrix which is assumed to be inverse 

makeCacheMatrix <- function(x = matrix()) {
 ## Empty result
  m<-NULL
   set<-function(y){
    ## intialize in-case of null value
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


##cacheSolve to cache the result and return the inverse of the actual parameter X which is also a matrix 

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
