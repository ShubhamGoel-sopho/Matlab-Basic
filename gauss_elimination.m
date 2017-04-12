function [ Root ] = gauss_elimination( A,B )
    [m,n]=size(A);
    for k=1:m
        for i=k+1:m
            f1=A(i,k)/A(k,k);
            for j=k:m
                A(i,j)=A(i,j)-f1*A(k,j);
            end
            B(i)=B(i)-(f1*B(k));
        end
    end
    disp('The solution is: ')
    
    for i=m:-1:1
        f2=0;
        j=i+1;
        while(j<=m)
            f2=f2+(s(j)*A(i,j));
            j=j+1;
        end
        s(i)=(B(i)-f2)/A(i,i);
    end
    Root=s;
end