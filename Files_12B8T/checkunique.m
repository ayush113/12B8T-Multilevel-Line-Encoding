function true = checkcorrect(terlist,num)
%Function for checking if a mapping is unique

%Checking for unique mapping is done through the second row of terlist
%If a number in the terlist has already been used then it's correspinding second row will store -1

%Return 0, or flase when second row stores -1,as that mapping has already been done
if(terlist{2,num} == -1)
    true = 0;
else
    true = 1;
    terlist{2,num} = -1;
end

end