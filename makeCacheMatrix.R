## The first function, makeCacheMatrix creates a special "matrix", which is really a list containing a function to :
## set the value of the matrix
## get the value of the matrix
## set the value of the inverse
## get the value of the inverse


## makeCacheMatrix accepts an input of type matrix()

## Example of initialization : 
## x <- rbind(c(1, -1/4), c(-1/4, 1))
## imatrix <- makeCacheMatrix(x)

## You may check matrix input by issuing  :
## imatrix$get()

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setinverse <- function(m_inverse) inverse <<- m_inverse
  getinverse <- function() inverse
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}