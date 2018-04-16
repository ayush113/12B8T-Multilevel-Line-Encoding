function finc = transmission(proclist)

% This function simulates the transmission for 12B8T

%PLAN : Split in 12 keep track of sum, when unbalanced invert
%add inversion flag

dword = input('Enter the dataword\n','s');
len = (length(dword)/12);
prev = 0;
sum = 0;

cell = {};

for i = 1:len
    temp = dword(12*(i-1)+1:12*i);
    cell = [cell,temp]; %#ok<*AGROW>
end

cell{2,1} = [];
cell{3,1} = [];
vari = length(cell);
%cell now has the multiple partitions
for j = 1:(vari-1)
    for i = 1:4096
        if(cell{1,j} == proclist{1,i})
            cell{2,j} = proclist{2,i};
            sum = calc(proclist{2,i});
        end     
    end
    if((prev ~= 0) && (sum ~= 0))
            display(sum);
            cell{2,j} = invert(cell{2,j});
            cell{3,j} = 1;
    end 
    prev = prev + sum;
end
finc = cell;
%finc = cell2mat(cell);
end
    
