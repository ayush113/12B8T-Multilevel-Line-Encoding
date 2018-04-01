function true = checkcorrect(terlist,num)
%Function for checking if a mapping is unique

if(terlist{2,num} == -1)
    true = 0;
else
    true = 1;
    terlist{2,num} = -1;
end

end