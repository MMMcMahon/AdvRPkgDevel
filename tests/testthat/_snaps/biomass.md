# biomass_index throws error on invalid input

    Code
      biomass_index("ten", 5)
    Condition
      Error in `cpue * area_swept`:
      ! non-numeric argument to binary operator

---

    Code
      biomass_index(10, "five")
    Condition
      Error in `cpue * area_swept`:
      ! non-numeric argument to binary operator

# cpue uses verbosity when option is set to TRUE

    Code
      biomass_index(5, 100)
    Message
      Calculating biomass index for 1 records
    Output
      [1] 500

