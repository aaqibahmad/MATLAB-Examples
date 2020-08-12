clear;
clc;
b=[3 4 5;6 7 8;1 2 3];
mean2(b);
s=size(b);
su=0;
for i=1:s(1)
    for j=1:s(2)
        su=su+b(i,j);
    end
end
fprintf("Global mean:%.2f\n",su/(s(1)*s(2)));