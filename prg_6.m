%% Write a program to determine the largest two Eigen values of the following matrix:
 
A=[1 0 0 1 -1;0 2 3 5 0; -1 0 0 0 1;6 8 1 2 -2;1 1 1 1 1];

[v,d] = eigs(A,2,'LM');%%here v contains two ev of corresponding evalues
x = [0];
for i=1:2
    for j=1:2
        if d(i,j) ~= 0
            x = [x d(i,j)];
        end
    end
end

disp(x);
    