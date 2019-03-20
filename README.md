# Data Communications(CO250): Mini-Project

<h2>Title:</h2>
12B8T Multilevel Line Coding Scheme in Digital to Digital Data Conversion

<h2>Members:</h2>
Anshul Pinto (16CO101) -  ApintoAApintoA@gmail.com

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
  
What we plan to do: To implement the 8B6T and 12B8T encoding schemes and to   
compare signal rates, DC components and bandwidth used for transmission for these  
two schemes.  

<h2>Objectives:</h2>  
1. Implement 12B8T Multilevel Line Coding Scheme.  
2. Comparison with other existing methods.  
  
<h2>References:</h2> <br/>
http://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=8289090


<h2>File Structure:</h2>
1. Images - Contains All Screenshots, results and other image information<br/>
2. Progress1 -Contains Objectives and Results of Progress1<br/>
3. Introduction.md - Explain theoretical aspects of the mini project.<br/>
4. Design.md - Explain design aspects of the mini project.<br/>
5. binarylist.m - Function File for generating a list of binary numbers of certain size<br/>
6. checkcorrect.m - Function for checking if a given mapping satisfies the constraints<br/>
7. checkunique.m - Function to check if a given mapping is unique<br/>
8. main.m - The main script file to run everything for progress 1<br/>
9. mapping.m - Function file for mapping between binarylist and ternarylist<br/>
10. ternarylist.m - Function file for creating a list of ternary(base3) numbers<br/>
11. 8B6T_encoding_waveform.m - Shows signal waveform of the codeword<br/>
12. 8B6Tmappings.md - File containing all the mappings for 8B6T<br/>
13. 8b6t_chart.mat - MATLAB variable file for the encodings of 8B6T<br/>
14. B6T8.m - File for simulating 8B6T encoding<br/>
15. B6T12.m - File for simulating 12B8T encoding<br/>
16. const_mapping.m - Checks the given list of 12B8T mapping for constraints<br/>
17. cword_graph.m - Graphing function for both the encoding techniques<br/>
18. decoding.m - File for retrieving dataword from a given codeword<br/>
19. encoding_scheme_8B6T.m - Encoding scheme for 8B6T<br/>
20. modified_mapping.m - Final encoding file for 12B8T<br/>
21. processing.m - Processes the mapped encoding to replace it with signal elements<br/>
22. transmission.m - Simulates the calculation of DC elements<br/>
23. wave.m - Actual file for plotting graphs<br/>

<h2>Results and Analysis</h2>

We were able to implement the 12B8T encoding system as per the specifications given in  
the paper. We create a list of all 12 bit binary numbers and all 8 bit ternary numbers  
and then create a mapping from the binary list to the ternarylist, this mapping is unique  
and satisfies the constraint condition of no more than 3 more consecutive characters.  
  
The 8B6T encoding scheme was also implemented to compare the efficiency of these two encoding  
schemes with respect to DC Components, Signal Rates and Bandwidth needed.  

<h5>Screenshots of program execution:</h5>  
![Image 1 ](../Images/f12B8T.png?raw=true "12B8T execution")<br/><br/>  
![Image 2](../Images/f8B6T.png?raw=true "8B6T execution")<br/><br/>  

<h5>Graphs for generated codewords</h5>  
<h6> 12B8T</h6>  
![Graph 1](../Images/12B8T1.jpg?raw=true "12B8T Graph") <br/><br/>  
 <h6> 8B6T</h6>  
![Graph 2](../Images/8B6T1.jpg?raw=true "8B6T Graph")  

<h4>Comparison between the encoding methods</h4>  
The two encoding methods can be compared with respect to their DC Components, Signal Rates  
and Bandwidth needed.  

<b>DC Components :</b><br/>  
DC Components are handled in both the encoding methods in a similar way. Both the  
encoding methods keep track of the weight of the codewords till the previous transmitted signal,  
if the weight will be unbalanced after the next signal then the current signal is altered(inverted)  
to balance the wieght.  

In case of 8B6T the receiver knows that the codeword was inverted if it's weight is -1, cause 8B6T only  
has +1 and 0 weights for all of it's encodings.  

In our implementation of 12B8T the receiver knows that a codeword is invalid because of the flag sent along  
with it.  

Both the encodings are not affected by DC Components.  

Example of Transmission:<br/><br/>  
![Image 3](../Images/fDC12B8T.png?raw=true "Transmission")  
<br/>
The above image shows that whenever the sum of weights becomes unbalanced the next element  
(second) is inverted shown by flag(3rd row).  

<b>Signal Rates</b><br/>  
<i>For 12B8T:</i><br/>  
In 12B8T line encoding system we have 12 data elements being transmitted using 8 signal elements  
thus givin us a ratio r = 12/8. Using the formula for signal rate we get the Signal Rate for 12B8T as  
4N/12.<br/>  
<i>For 8B6T:</i><br/>  
In 8B6T encoding similarly we have r = 8/6 giving us an overall signal rate of 3N/4 which is higher than   
that of 12B8T encoding.  

For any value of the data rate N we have proved that the signal rate of 12B8T encoding method will be lesser.  

<b>Bandwidth</b>   
Bandwidth and Signal Rate are closely related to each other, from the following table we can establish that  
for a given data rate 12B8T encoding will have a lower bandwidth.  
<br/>  
![image 8](../Images/bandwidth.png?raw=true "Bandwidth")  
<br/>  
<b>Conclusion</b><br/>  
In this implementation we were able to verify the claims made by the paper. Our implementation of 12B8T is more efficient  
than 8B6T multilevel line encoding method. The only problem with 12B8T encoding method is that it doesn't account for  
baseline wandering.  
