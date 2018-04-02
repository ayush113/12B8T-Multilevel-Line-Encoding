function true = checkcorrect(value)
%Function for checking if a mapping is correct

flag = 0;

counter = 1;
check = value(1);

for i = 2:8
    if(value(i) == check)
        counter = counter + 1;
    else
        check = value(i);
        counter = 1;
    end
    if(counter>=3)
        flag = 1;
        break
    end
end
true = flag;
        
end