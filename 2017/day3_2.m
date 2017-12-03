% The Answer can be looked up in the created matrix 

M = zeros(11,11);
M(6,6) = 1;

a = 325489;

x = 6;
y = 6;

count = 2;

while M(x,y) <= a
    %initial step
    M(x,y+1) = sumSurrounding(M,x,y+1);
    y = y+1;
    %going up
    for i = 1:(count-1)
        M(x-1,y) = sumSurrounding(M,x-1,y);
        x = x-1;
    end
    %going left
    for j = 1:count
        M(x,y-1) = sumSurrounding(M,x,y-1);
        y = y-1;
    end
    %going down
    for i = 1:count
        M(x+1,y) = sumSurrounding(M,x+1,y);
        x = x+1;
    end
    %going right
    for i = 1:count
        M(x,y+1) = sumSurrounding(M,x,y+1);
        y = y+1;
    end
    count = count + 2;
end


