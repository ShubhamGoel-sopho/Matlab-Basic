%%solving c1+c2x+c3x^2+c4x^3+.......+cmx^m-1
%%where c1  =  1 and cm  = 1/m

function calvalue = fourthfunction(n,x)
     
    i = 2;
    constdiv = [1];
    while i<=n
        constdiv = [constdiv,1/i];
        i = i+1;
    end
    i = 2;
    calcdiv = [1];
    while i<=n
        calcdiv = [calcdiv,(x^(i-1))*constdiv(i)];
        i = i+1;
    end
    
   calvalue =  sum(calcdiv);
   
end
    
    