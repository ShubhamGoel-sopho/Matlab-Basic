%%  finding the largest two eigen value of the given matrix


given_matrix = [1 0 0 1 -1;0 2 3 5 0;-1 0 0 0 1;6 8 1 2 -2;1 1 1 1 1];


[v,d]=eigs(given_matrix,2,'LM')
