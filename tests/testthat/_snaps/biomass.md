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

# cpue uses verbosity when option set to TRUE

    Code
      cpue(100, 10)
    Message
      Processing 1 records
    Output
      [1] 10

