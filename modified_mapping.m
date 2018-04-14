function mappedlist = modified_mapping(binlist,terlist)
%Function for unique mapping from binary list to ternary list

binlen = size(binlist);
binlen = binlen(2);
terlen = size(terlist);
terlen = terlen(2);
binlist{2,1} = [];
terlist{2,1} = [];

terlist = const_mapping(terlist);
for i = 1:binlen
    num = randi([1,terlen]);
    %counter = counter + 1;
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
        i = i - 1; %#ok<*FXSET>
        continue
    end  
end

for i = 1:binlen
   val = size(binlist{2,i});
   val = val(2);
   if(val == 0)
       for j = 1:terlen
           %display(terlist{2,i});
           val2 = size(terlist{2,j});
           val2 = val2(2);
           if(val2 == 0)
               if(checkcorrect(terlist{1,j}) == 0)
               %display("YO");
               binlist{2,i} = terlist{1,j};
               terlist{2,j} = -1;
               break
               end
           end
       end
   end
end 
%mappedlist = const_mapping(binlist,terlist);
mappedlist = binlist;
end