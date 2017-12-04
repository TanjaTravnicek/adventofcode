M = dlmread('input2.txt');

sum = 0;
for i = 1:16
    sum = sum + (max(M(i,:)) - min(M(i,:)));
end
sum