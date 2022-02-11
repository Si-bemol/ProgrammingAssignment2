## So first of all, i just set the input z as
##a matrix and then the solved value of "f" as a null
## Then we need to change every references of "mean" to "solve"
##Adding a sample to the function
makeCacheMatrix <- function(z = matrix(sample(1:100,9),3,3)) {
        f <- NULL
        set <- function(y) {
                z <<- y
                f <<- NULL
        }
        get <- function() z
        setsolve <- function(solve) f <<- solve
        getsolve <- function() f
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}

## Again we change the "mean to "solve"


cacheSolve <- function(z, ...) {
        f <- z$getsolve()
        if(!is.null(f)) {
                message("getting inversed matrix")
                return(f)
        }
        data <- z$get()
        f <- solve(data, ...)
        z$setsolve(f)
        f
}
##OVER, we just run some code to make sure it works.
##There are plenty ways to get this solution, this is the easiest!
