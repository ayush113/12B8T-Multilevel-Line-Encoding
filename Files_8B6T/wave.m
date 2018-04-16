function flag = wave(codeword)
%Function for plotting graphs from codewords

%mapping
for ii=1:length(codeword)
    if codeword(ii) == '+';
        n(ii)=2.5;
    else if codeword(ii)== '-';
        n(ii)=-2.5;
    else
        n(ii)=0;
    end
    end
end   

%pulses

i=1;
t=0:0.01:length(codeword);

for j=1:length(t)
    if t(j)<=i;
        y(j)=n(i);
    else
        y(j)=n(i)
        i=i+1;
    end
end

plot(t,y,'r-');
axis([0 length(codeword) -5 5]);
line('XData', [0 8], 'YData', [0 0], 'LineWidth', 2, ...
    'LineStyle', '-', 'Color', [0.2 0.4 1.0])
flag = 1;
end
