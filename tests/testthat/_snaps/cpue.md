# cpue errors when input is not numeric

    Code
      cpue("five", 10)
    Condition
      Error:
      ! Unsupported input type for cpue(): character

# cpue warns when catch and effor lengths differ

    Code
      cpue(c(100, 200, 300), c(10, 20))
    Condition
      Warning in `catch / effort`:
      longer object length is not a multiple of shorter object length
    Output
      CPUE Results for 3 records
      Method:  ratio 
      Gear factor:  1 
      Values:  10 10 30 

# cpue uses verbosit when option is set to TRUE

    Code
      cpue(100, 10)
    Message
      Processing 1 records
    Output
      CPUE Results for 1 records
      Method:  ratio 
      Gear factor:  1 
      Values:  10 

# cpue print method works

    Code
      print(result)
    Output
      CPUE Results for 2 records
      Method:  ratio 
      Gear factor:  1 
      Values:  10 10 

