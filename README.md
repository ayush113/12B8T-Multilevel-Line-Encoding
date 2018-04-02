# Data Communications(CO250): Mini-Project

<h2>Title:</h2>
12B8T Multilevel Line Coding Scheme in Digital to Digital Data Conversion

<h2>Members:</h2>
Anshul Pinto (16CO101) - ApintoAApintoA@gmail.com

Jay Satish Shinde (16CO118) - jay.shinde98@gmail.com

Ayush Kumar (16CO208) - ayush.work113@gmail.com

<h2>Abstract:</h2>
To send data from one node to another we need to convert information into 
digital or analog signals. Line coding schemes are used to convert digital data
to digital signals.The paper introduced a new Multilevel Line Coding(12B8T). 
The paper claims that this theme overcomes the inherent faults of existing
encoding methods , it eliminates the problem with self synchronization, it has 
no DC components, and it performs better than existing methods of encoding like,
4B3T and 8B6T in terms of speed of transmission, bandwidth and signal rate.

<h2>Objectives:</h2>
1. Implement 12B8T Multilevel Line Coding Scheme.
2. Comparison with other existing methods.

<h2>References:</h2> <br/>
http://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=8289090


<h2>File Structure:</h2>
1. Images - Contains All Screenshots, results and other image information
2. Progress1 -Contains Objectives and Results of Progress1
3. Introduction.md - Explain theoretical aspects of the mini project.
4. Design.md - Explain design aspects of the mini project.
5. binarylist.m - Function File for generating a list of binary numbers of certain size
6. checkcorrect.m -Function for checking if a given mapping satisfies the constraints
7. checkunique.m -Function to check if a given mapping is unique
8. main.m -The main script file to run everything for progress 1
9. mapping.m -Function file for mapping between binarylist and ternarylist
10. ternarylist.m -Function file for creating a list of ternary(base3) numbers