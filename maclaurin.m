% maclaurin series
% n =5;
% a = 0.1;
% expval = 1.0;
% currentterm = 1.0;
% 
% for i=1:n
%     currentterm = currentterm * a/i;
%     expval = expval+currentterm;
% end
% 
trueval = exp(0.1);
% err = trueval - expval;
% 



n = 5;
a = 0.1;
expval = 1;
currterm = [1];
prevterm = 1;

for i=1:n
    currterm = [currterm,prevterm*(a/i)+expval];
    prevterm = prevterm*a/i;
    expval = currterm(end);
end

err = trueval - currterm;
disp(err);