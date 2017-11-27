function [L,R]=Separate(x)
l_count=0;
for i=1:size(x,1)
    if endsWith(x{i}.filename,"L")
        l_count=l_count+1;
    end
end
r_count=size(x,1)-l_count;

L=cell(l_count,1);
R=cell(r_count,1);
l_count=0;
r_count=0;

for i=1:size(x,1)
    if endsWith(x{i}.filename,"L")
        l_count=l_count+1;
        L(l_count)=x(i);
    else
        r_count=r_count+1;
        R(r_count)=x(i);
    end
end