function list = ternarylist(bitsize_ter)
%Function to create a ternary list for mapping of the signals

%An empty cell array which will later store all the ternary values
list = {};

%max_ter after the following for loop will store the maximum ternary value in that range
max_ter = 0;
for i = 0:(bitsize_ter -1)
    max_ter = max_ter + 2*(10^i);
end

%The following two lines are used to convert the max ternary value to decimal
%First the matrix is converted to a string and then
%base2dec function is used to convert it to decimal form
max_ter = mat2str(max_ter);
max_dec = base2dec(max_ter,3);

%In the following for loop, each of the decimal values are converted to ternary and added
%to the list variable
for i = 0:max_dec
    temp = dec2base(i,3,bitsize_ter);
    list = [list,temp];
end

end