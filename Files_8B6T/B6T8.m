function success = B6T8(encoding)
%Function for simulating the entire implementation of 8B6T

success = 0;

dword = input('Enter the dataword\n','s');
%New Array
p = {};
%Findig no of groups to take
n = length(dword)/8;
for j = 1:n
    dword1 = dword(8*(j-1)+1:8*j);
    %Split the dataword in groups of 12
    len = length(encoding);

    for i = 1:len
        if(encoding{1,i} == dword1)
            p = [p,encoding{2,i}];
            %wave(proclist{2,i})
        end
    end
end
newStr = cell2mat(p);
text = 'The codeword is\n';
sprintf(text,newStr)
sprintf(newStr)
wave(newStr,n*6);
success = 1;
end
