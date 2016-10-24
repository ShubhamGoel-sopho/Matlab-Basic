%%using the functions in the matlab
%%see the name of the function must be same as that of file name
%function result = mythirdfile(x)
 %   fibarray = [0,1];
 %   for i = 3:x
  %      fibarray = [fibarray,fibarray(i-1)+fibarray(i-2)];
  %  end
%result = fibarray;

%end
    
function mythirdfile(x)
    fibarray = [0,1];
    for i = 3:x
        fibarray = [fibarray,fibarray(i-1)+fibarray(i-2)];
    end
disp(fibarray);

end
                                  