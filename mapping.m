function mappedlist = mapping(binlist,terlist)
%Function for unique mapping from binary list to ternary list

%binlen and terlen store the size of the lists
binlen = size(binlist);
binlen = binlen(2);
terlen = size(terlist);
terlen = terlen(2);

%The following lines initialize a second row for mapping
binlist{2,1} = [];
terlist{2,1} = [];

%In this for loop each element of the binlist is assigned a unique mapping in
%terlist
for i = 1:binlen
    num = randi([1,terlen]);
    if(terlist{2,num} == -1)
        check = 0;
    else
        check = 1;
        terlist{2,num} = -1;
    end
    
    if(check == 1)
        
        binlist{2,i} = terlist{1,num};
        continue
    else
        i = i - 1;
        continue
    end        
end

%Returns The Mapped List
mappedlist = binlist;

end