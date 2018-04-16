function list = binarylist(bitsize_bin)
%Function to create the binary list for the mapping of the signals

%max_dec has the maximum decimal value for the given size(range)
max_dec = 2^(bitsize_bin) - 1;
%An empty cell array, which will later store all the binary values
list = {};

%The following for loop will add each binary value in the range to the list variable
for i = 0:max_dec
    temp = dec2base(i,2,bitsize_bin);
    list = [list,temp];
    
end

end