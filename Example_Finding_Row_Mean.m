clear;
clc;
b=[2,7,5;8,2,8;7,9,3];
a=b';
o=mean(a)';
fprintf('Mean Of The Rows:\n');
disp(o);
s=size(b);
for i=1:s(1)
    su=0;
    for j=1:s(2)
        su=su+b(i,j);
    end
    fprintf('Mean Of Row %d: %.2f\n\n',i,su/s(1));
end
