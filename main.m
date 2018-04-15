% Script File for 12B8T Encoding Scheme

%This File generates the binary and ternary lists
%Creates mappings between them which satisfy all constraints and are
%unique

bi = binarylist(12);
ti = ternarylist(8);
maplis = mmapping(bi,ti);
proclist = processing(maplis);

while(1)
    cword_graph(proclist);
end