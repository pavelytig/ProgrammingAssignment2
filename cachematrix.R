
## This function computes the inverse of the special "matrix" created by  makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed), 
## then it should retrieve the inverse from the cache.
makeCacheMatrix <- function(x = matrix()) {
inv = NULL
         set = function(y) {
               x <<- y
               inv <<- NULL
           }
         get = function() x
         setinv = function(inverse) inv <<- inverse 
         getinv = function() inv
         list(set=set, get=get, setinv=setinv, getinv=getinv)
}



## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) { 
         inv = x$getinv()
         
           
           if (!is.null(inv)){
                 
                   return(inv)
             }
                 
           return(inv)

        
}
