# OBJECTIVES FOR PROGRESS 1

1. Creating a list of ternary(Base 3 Numbers) withing a given range based on the
   encoding method chosen.
2. Creating a list of binary numbers based on the same criteria
3. Creating a function for mapping the binary numbers to the ternary numbers
4. Creating a function to check if the mapping of a binary number to the ternary
   number is unique.
5. Creating a function to ensure that the mapping satisfies the constraint of
   the encoding method

<h2> Further Goals </h2>
1. Implementing the 12B8T Encoding scheme using the above
2. Graphing the results

<h2> Problems </h2>
1. Integrating the constraint check function with the mapping function
    On using the constraint check function checkcorrect.m seperately, it is able to
    verify if a given mapping is allowed or not.
    On using the same function in the mapping function, the mapping function isn't able
    to allocate values to a numbers in binarylist because of the nature of the randi
    function in MATLAB.