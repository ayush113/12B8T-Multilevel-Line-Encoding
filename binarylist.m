function list = binarylist(bitsize_bin)
%Function to create the binary list for the mapping of the signals

max_dec = 2^(bitsize_bin) - 1;
list = {};
for i = 0:max_dec
    temp = dec2base(i,2,bitsize_bin);
    list = [list,temp];
    
end

end