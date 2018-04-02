function true = checkcorrect(value)
%Function for checking if a mapping is correct as per the constraints

%The truth value is stored in flag
flag = 0;

counter = 1;
%The first element is taken into check
check = value(1);

%Whenever three consecutive occurences of an element occurs we get an error
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