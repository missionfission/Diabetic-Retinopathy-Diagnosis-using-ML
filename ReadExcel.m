%%
x=dir();
lcount=0;
rcount=0;
for i=3:size(x,1)
    y=x(i).name;
    if(endsWith(y,"L.xlsx"))
        lcount=lcount+1;
    end
    if(endsWith(y,"R.xlsx"))
        rcount=rcount+1;
     end
end
Left=zeros(lcount,8);
Right=zeros(rcount,8);
lcount=0;
rcount=0;
for i=1:size(x,1)
    y=x(i).name;
    if(endsWith(y,"L.xlsx"))
        lcount=lcount+1;
        Left(lcount,:)=ReadTrim(y);
    end
    if(endsWith(y,"R.xlsx"))
        rcount=rcount+1;
        Right(rcount,:)=ReadTrim(y);
    end
end
save('left.mat','Left');
save('right.mat','Right');

