function dword = decoding(cword,proclist)

%This function is used to get the dataword back from the codeword

dword = 0;

len = length(proclist);

for i =1:len
    if(proclist{2,i} == cword)
        dword = proclist{1,i};
    end
end

if(dword == 0)
    sprintf("No Dataword for this codeword")
end

end