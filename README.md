makeCacheMatrix<-function(x=matrix()){
    inv<-NULL
##pair of functions that cache the inverse of a matrix.
##This function will create a special "matrix" that would cache its inverse.
##Operator <<- is used to assign value to an object in an environment that is different from current environment.

makeCacheMatrix<-function(x=matrix()){                      ##making a function named as makeCacheMatrix
    inv<-NULL                                               ##assigning NULL to a variable 'inv'
    set<-function(y){                                       ##Creating a function "set" and passing variable "y"                              
       x<<-y                                                
       inv<<-NULL
    }
    get<-function() x
    setInverse<-function(solveMatrix)  inv<<-solveMatrix    ##Set the value of invertible matrix
    getInverse<-function() inv                              ##Get the value of invertible matrix
    list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}



