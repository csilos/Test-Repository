########### Length of Ones - Problem 2
len_one <- function(x){
  
  cnt <- 0
  
  cnt_vec <- vector(mode = "numeric")
  
  for(i in x){
    
    if(i == 1){
      
      cnt = cnt + 1
      
      cnt_vec <- append(cnt_vec, cnt) # stores all count values into a vector to then pull the max count value at the end
      
    } else if(i != 1) {
      
      cnt = 0
      
      cnt_vec <- append(cnt_vec, cnt) # stores all count values into a vector to then pull the max count value at the end
    }
  }
  
  max_sequence <- max(cnt_vec)
  
  return(max_sequence)
  
}

## Testing the function

vec <- c(0,0,1,1,0)
len_one(vec)

vec2 <- c(1,1,1,1,0,1,1,0)
len_one(vec2)

vec3 <- c(0,0,0)
len_one(vec3)

vec4 <- c(1,1,1,1)
len_one(vec4)



########### Roman Numeral problem

roman_trans <- function(x){
  x <- toupper(x)
  if(x == "I"){
    print(1)
  } else if(x == "V"){
    print(5)
  } else if(x == "X"){
    print(10)
  }else if(x == "L"){
    print(50)
  }else if(x == "C"){
    print(100)
  }else if(x == "D"){
    print(500)
  }else if(x == "M"){
    print(1000)
  }
  
}

x <- "V"
roman_trans(x)
x2 <- "i"
roman_trans(x2)
roman_trans("V")

roman_trans2 <- function(x){
  x <- toupper(x)
  switch(x, "I" = 1, "V" = 5, "X" = 10, "L" = 50, "C" = 100, "D" = 500, "M" = 1000)
}

roman_trans2("i")
roman_trans2("m")


### I am making changes now to see if the changes go to my github repository

## Making another change to see if it is working