%% to check the consistency and inconsistency of matrix

function vals = solns(A,B)
    ranka = rank(A);
    [m n] = size(A);
    [l k] = size(B);
     if m == l
         if k == 1
             C = horzcat(A,B);
             rankc = rank(C);
             disp(['There are ' int2str(m) ' equations']) % int2str() converts integer to string 
             disp(['with' int2str(n) ' variables'])
             if rankc ~= ranka
                 disp('There are no solutions')
             elseif ranka == n
                 disp('There is a unique soln')
                 fprintf('the soln are \n')
                 X = A\B;
                 disp(X);
             elseif ranka < n
                 disp('there are infinite soln')
                 dof =(n-rank(A)); 
                 disp(['There are infinite number of solutions with ' int2str(dof) ' degree of freedom'])
             end
         end
     end
                 