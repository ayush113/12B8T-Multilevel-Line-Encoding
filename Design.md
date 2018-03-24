# Implementation and Design Details:

In this project we plan on implementing a new Multilevel Line Coding scheme and comparing it's effectiveness with that of exisitng schemes<br/>

<h4>Implementing The 12B8T scheme</h4>

For implementing the 12B8T scheme we will use arrays to store the data, and then split it based on the parameters of the coding scheme to<br/>
assign corresponding levels to the data stream and graph it, to demonstrate this new coding scheme.
<br/>

We will also check the effectiveness of this coding scheme with respect to self-synchronisation, baseline wandering and existence of DC-Components.<br/>

After this, to visualise the improvements this scheme gives over 4B3T and 8B6T, we will obtain graphical results from implementation of these coding<br/>
schemes and compare it with the results of 12B8T scheme to see how it effectively handles the flaws in other coding schemes.
<br/>
###### 12B8T Line Coding Scheme
![Image 1](Images/Image1.jpg?raw=true "12B8T Multilevel Line Coding Scheme")

<h4>Improvement on 12B8T Scheme</h4>

The proposed line coding scheme has better performance than the other two methods in all aspects, but it doesn't handle baseline wandering effectively<br/>
In our project we plan on making changes in the coding scheme to counter this flaw.





