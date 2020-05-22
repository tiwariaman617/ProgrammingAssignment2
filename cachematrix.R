##This function would compute the inverse of the special "matrix" returned by makeCacheMatrix .
##If inverse has already been calculated ,then cacheSolve will retrieve the inverse from cache.


cacheSolve<-function(x,...){
   inv<-x$getInverse()
   if(!is.null(inv)){                       ##Checks if inverse is being calculated or not.
      message("getting cache data")         ##If inverse was calculated already then it would print "getting cache data"
      return(inv)                           ##It would return value of the inverse of the matrix if calculated already.
   }
  data<-x$get()
  inv<-solve(data)                          ##This solve() function is used to compute the inverse of a matrix.
  x$setInverse(inv)
  inv
}