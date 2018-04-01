function mappedlist = mapping(binlist,terlist)
%Function for unique mapping from binary list to ternary list

binlen = size(binlist);
binlen = binlen(2);
terlen = size(terlist);
terlen = terlen(2);

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

mappedlist = terlist;

end