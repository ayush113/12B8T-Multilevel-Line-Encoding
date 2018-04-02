%get input
codeword = input('Enter the codeword >>' , 's')

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
