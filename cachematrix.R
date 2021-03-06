## Put comments here that give an overall description of what your
## functions do
## Author Roberto Hoki

## Write a short comment describing this function
## Roberto Hoki The following function calculates the mean of the special matrix 

makeCacheMatrix <- function(x = matrix()) {
         
        ma <- NULL
        
        set <- function(Y){
                
                x <<- y
                ma <<- NULL
                
                
        }
        get <- function() x
        setmean <- function(mean) ma <<- mean
        getmean <- function() ma
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)

}


## Write a short comment describing this function
## Roberto Hoki calculate a inverse matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ma <- x$getmean()
        if(!is.null(ma)) {
                message("getting cached data matrix")
                return(ma)
        }
        data <- x$get()
        ma <- solve(data, ...)
        x$setmean(ma)
        ma
        
        
}
