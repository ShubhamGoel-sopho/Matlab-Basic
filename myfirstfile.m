%%practising the loops in the matlab%%


%for i = 2:10
    %disp(i);
    
    %end
    
disp('my name is shubham goel and the value of i is');   
fibarray = [0,1];
for i = 3:10
    fibarray = [fibarray,fibarray(i-1)+fibarray(i-2)];
end
disp(fibarray);
    
 %%version 2 using the while loop
 
 fibarray = [0,1];
 x = fibarray(1)+fibarray(end);
 index = 4;
 while (x < 300)
     fibarray = [fibarray,x];
     x =fibarray(index-1)+fibarray(index-2);
     index = index+1;
 end
 disp(fibarray);
