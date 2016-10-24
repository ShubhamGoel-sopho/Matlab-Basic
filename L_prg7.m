%% Given two polynomials f = 15x^3 – 7x^2 + 2x + 4 and g = 9x^2 – 17x +3, do the following problems:
%% A. Find the product of f and g.
%% B. Find the quotient and remainder of f divided by g.
%% C. Find the roots of g and f.
%% D. Find the value of f at x=3 and for g at x=2i


f = [15 -7 2 4];
g = [9 -17 3];

fg = conv(f,g)

fprintf('\n');

[Quotient,Remainder] = deconv(f,g)

fprintf('\n');

roots_of_f = roots(f)

fprintf('\n');

root_of_g = roots(g)

fprintf('\n');

ans_f_3 = polyval(f,3)

fprintf('\n');

ans_g_2i = polyval(g,2i)

