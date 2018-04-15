function flag = cword_graph(proclist)

%Graphing by taking dataword as input

dword = input('Enter the dataword\n','s');
display(dword);
%Split the dataword in groups of 12
len = length(proclist);

for i = 1:len
    if(proclist{1,i} == dword)
        wave(proclist{2,i})
    end
end    
flag = 1; 

end