function list = ternarylist(bitsize_ter)
%Function to create a ternary list for mapping of the signals

list = {};
max_ter = 0;
for i = 0:(bitsize_ter -1)
    max_ter = max_ter + 2*(10^i);
end

max_ter = mat2str(max_ter);
max_dec = base2dec(max_ter,3);

for i = 0:max_dec
    temp = dec2base(i,3,bitsize_ter);
    list = [list,temp];
end

end