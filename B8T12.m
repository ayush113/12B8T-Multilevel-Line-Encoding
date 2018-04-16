function success = B8T12()

%Function for simulating the entire implementation of 12B8T
success = 0;
sprintf('12B8T encoding scheme\n')
bi = binarylist(12);
ti = ternarylist(8);
maplis = mmapping(bi,ti);
proclist = processing(maplis);
%len = length(proclist);
str = cword_graph(proclist);

sprintf('The codeword is\n')
sprintf(str)

success = 1;
end