function modterlist = const_mapping(terlist)

%This function checks all mappings to ensure that they satisfy the
%constraints
terlen = size(terlist);
terlen = terlen(2);

for i = 1:terlen
    if(checkcorrect(terlist{1,i}) == 1)
        terlist{2,i} = -1;
    end
end


modterlist = terlist;
end
    
