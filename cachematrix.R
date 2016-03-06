## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        i<<-NULL
        get<-function() x
        set<-function(y){
                x<<-y
                i<<-NULL
        }
        setinverse<-function(inverse) i<<-inverse
        getinverse<-function() i
        list(get=get, set=set, getinverse=getinverse, setinverse=setinverse)
        

}

##this function assign the non-existed matrix to the variable x

cacheSolve <- function(x, ...) {
        i<<-x$getinverse()
        if(!is.null(i)){
                message("from cache we got")
                return(i)
        }
        ##here, we exam whether the getinverse already exists its value
        ##if is case, then we just simply print back the previous value
        else{
                matrix<-x$get()
                i<<-solve(matrix)
                x$setinverse(i)
                i
        }
        ##this subset first assign the element "matrix" with proper value
        ##then solve the inverse and assign the result into setinverse

}
