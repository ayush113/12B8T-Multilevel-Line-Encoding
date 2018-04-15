function flag = cword_graph(proclist)

%Graphing by taking dataword as input

dword = input('Enter the dataword\n','s');
%New Array
p = {};
%Findig no of groups to take
n = length(dword)/12;
for j = 1:n
    dword1 = dword(12*(j-1)+1:12*j);
    %Split the dataword in groups of 12
    len = length(proclist);

    for i = 1:len
        if(proclist{1,i} == dword1)
            p = [p,proclist{2,i}];
            %wave(proclist{2,i})
        end
    end
end
newStr = cell2mat(p);
wave(newStr,n*8);
flag = 1; 



end