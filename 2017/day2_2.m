M = dlmread('input2.txt');

sum = 0;
for i = 1:16
    X = M(i,:);
    for j = 1:16
       N = X(~mod(M(i,:),M(i,j)));
       [u,v] = size(N)
       if(v == 2)
           sum = sum + (~mod(N(1,1),N(1,2))*(N(1,1)/N(1,2)));
           sum = sum + (~mod(N(1,2),N(1,1))*(N(1,2)/N(1,1)));
       end
    end
end
sum