#CS/IST 492 Assignment 2: Using R For Data Analysis
#Name:
#Due date: 4/5/19

#For the following functions, you can assume that all values you are using are numeric/integers. A sample matrix is provided here for you to test your functions (see how this matrix can help with evaluating?).
input_matrix <- matrix(c(1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0), nrow = 5, byrow = FALSE)

#1. Complete the following function. This function should take in a matrix/data frame and compute the Pearson correlation coefficient for every combination of columns in the matrix.
#Recall from class that this measure is used to evaluate linear correlation between two variables.
#For example, if you have a 5 column matrix, you would have to calculate the coefficient for the following pairs of columns: 1x2, 1x3, 1x4, 1x5, 2x3, 2x4, 2x5, 3x4, 3x5, 4x5
#Note how it is not necessary to calculate 2x1 because you have already done so (it's the same as 1x2), this follows for 3x2, etc.
#As you calculate each coefficient, print to the console the results in the following format (Use column names if they exist, else column number is OK)
#<Column 1 Name> x <Column 2 Name>: <coefficient value between -1 and 1>
#<Column 1 Name> x <Column 3 Name>: <coefficient value between -1 and 1>
#...





for(i in 1:(ncol(input_matrix)-1)){
  
  start =i+1
  for(j in start:(ncol(input_matrix)))
  {
    
    xMean=mean(input_matrix[,i])
    yMean=mean(input_matrix[,j])
    
    xsd=sd(input_matrix[,i])
    ysd=sd(input_matrix[,j])
    value = 1/(ncol(input_matrix)-1)
    Xvalues = input_matrix[,i]
    Yvalues= input_matrix[,j]
    
    SumX=c(0.0,0.0,0.0,0.0,0.0)
    SumY=c(0.0,0.0,0.0,0.0,0.0)
    counter= 0
    
    xy = 0
    for(meep1 in Xvalues ){
      
      
      SumX[1] = SumX[1]+ ( (((meep1-xMean))) *((meep1-xMean))) 
   
      
    }
    
    
    for(meeps2 in Yvalues){
      
      
      SumY[1] = SumY[1]+ ( (((meeps2-yMean))) *((meeps2-yMean))) 
      
      
      
      
    }
    
    
    
  }
  # start+1
  
}



#Lastly, your function should return a vector containing all of the calculated coefficients, stored in the order they were printed to the console.
calculate_correlation_coefficients <- function(input_matrix) {
  
  
  
  for(i in 1:(ncol(input_matrix)-1)){
    
    start =i+1
    for(j in start:(ncol(input_matrix)))
    {
      
      xMean=mean(input_matrix[,i])
        ymean=mean(input_matrix[,j])
        xsd=sd(input_matrix[,i])
        ysd=sd(input_matrix[,j])
        value = 1/(ncol(input_matrix)-1)
        Xvalues = input_matrix[,i]
        Yvalues= input_matrix[,j]
        
      
    

    }
    # start+1
    
  }
  
  
  
  
}


calculate_correlation_coefficients(input_matrix)
#2. Write a function that computes the Information Gain (or Kullbak-Leibler divergence) for a specified variable in a matrix/data frame
#The function takes 3 parameters, the first being the matrix/df itself. The latter two specify the variables of interest, the first of which is the one you're trying to #find more information out about, the second of which you are provided to see how much information it can tell you about the first. Lastly, have this function return
#the calculated value.
calculate_info_gain <- function(input_matrix, first_variable_column, second_variable_column) {

}

