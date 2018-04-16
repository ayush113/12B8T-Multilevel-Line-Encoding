% Script File for 12B8T Encoding Scheme

%This File generates the binary and ternary lists
%Creates mappings between them which satisfy all constraints and are
%unique

%For loading 8B6T
load('8b6t_chart.mat','encoding');

while(1)
    num = input('Choose 1. 12B8T 2.8B6T\n');
    if(num == 1)
        flag = B8T12();
        if(flag == 0)
            sprintf('ERROR ENCOUNTERED\n')
            continue;
        end
    else
        if(num == 2)
            flag = B6T8(encoding);
            if(flag == 0)
                sprintf('ERROR ENCOUNTERED\n')
                continue;
            end
        end
    end
end