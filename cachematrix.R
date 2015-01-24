#Answer1
#This function creates a special "matrix" object that can cache its inverse.

<<<<<<< HEAD
makeCacheMatrix <- function(x = matrix()) 
{
    inverse <- NULL

    set <- function(z)
 {
        x <<- z
        
	  inverse <<- NULL
    }
    	get <- function() x
# get function returns the matrix

 	setinverse <- function(inverse) inverse <<- inverse

# setinverse overrides the previous value of inverse and assigns the argument to inverse    
	
	getinverse <- function() inverse
=======
makeCacheMatrix <- function(y = matrix()) 
{
  inverse <- NULL
  
  set <- function(z)
  {
    y <<- z
    
    inverse <<- NULL
  }
  get <- function() y
  # get function returns the matrix
  
  setinverse <- function(inverse) inverse <<- inverse
  
  # setinverse overrides the previous value of inverse and assigns the argument to inverse    
  
  getinverse <- function() inverse
  
  # getInverse returns the Inverse
  
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
  
  # creates a list of the functions
  
}

#Sample Output

# m <- makeCacheMatrix()
# m$set(matrix(c(1,2,4,3),2,2))
# m$get()
#     [,1] [,2]
# [1,]    1    4
# [2,]    2    3
>>>>>>> origin/master

# getInverse returns the Inverse
    
	list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

<<<<<<< HEAD
# creates a list of the functions

}

#Sample Output

# m <- makeCacheMatrix()
# m$set(matrix(c(1,2,4,3),2,2))
# m$get()
#     [,1] [,2]
# [1,]    1    4
# [2,]    2    3

 
#Answer2
#This function computes the inverse of the special "matrix" returned by makeCacheMatrix above

	cacheSolve <- function(x, ...) {
# Retrives the most recent value for the inverse
    	
	inverse <- x$getinverse()
    	
	if(!is.null(inverse)) {
        	
	message("getting cached data.")
      
	  return(inverse)
# If the value of Inverse is NOT null (was previously calculated), cacheSolve returns that value        

    }
    	data <- x$get()
    	
	inverse <- solve(data)
    
	x$setinverse(inverse)
# Sets Inverse to the newly calculated value   
    
	inverse
#Returns the new Inverse value
	}

=======
#Answer2
#This function computes the inverse of the special "matrix" returned by makeCacheMatrix above

cacheSolve <- function(y, ...) {
  # Retrives the most recent value for the inverse
  
  inverse <- y$getinverse()
  
  if(!is.null(inverse)) {
    
    message("getting cached data.")
    
    return(inverse)
    # If the value of Inverse is NOT null (was previously calculated), cacheSolve returns that value        
    
  }
  data <- y$get()
  
  inverse <- solve(data)
  
  y$setinverse(inverse)
  # Sets Inverse to the newly calculated value   
  
  inverse
  #Returns the new Inverse value
}

>>>>>>> origin/master
# Sample output
# m$set(matrix(c(1,2,4,3),2,2))
# cacheSolve(m)
#[,1] [,2]
#[1,] -0.6  0.8
#[2,]  0.4 -0.2
<<<<<<< HEAD


=======
>>>>>>> origin/master
