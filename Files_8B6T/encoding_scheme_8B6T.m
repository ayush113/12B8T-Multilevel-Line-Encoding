%get input
dataword = input('Enter the dataword >>' , 's');
voltage = input('Enter the voltage ( positive value < 5V ) >>');

for m=1:256
    if dataword == encoding{1,m};
        codeword = encoding{2,m};
        for ii=1:length(codeword)
            if codeword(ii) == '+';
                n(ii)=voltage;
            else if codeword(ii)== '-';
                n(ii)=-voltage;
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
    else if n==256 &  dataword ~= encoding{1,256};
        print('Invalid codeword')
            end
        end
    end


%mapping


