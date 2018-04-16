function proclist = processing(binlist)

%This function processes the mapped list to give us a dataset which can be
%graphed

binlen = size(binlist);
binlen = binlen(2);

for i = 1:binlen
    val = size(binlist{2,i});
    val = val(2);
    curr = binlist{2,i};
    for j = 1:val
        if(curr(j) == '1')
            curr(j) = '+';
        end
        if(curr(j) == '2')
            curr(j) = '-';
        end
    end
    binlist{2,i} = curr;
end

proclist = binlist;
end
