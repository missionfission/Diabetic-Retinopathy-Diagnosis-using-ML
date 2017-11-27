function y=ReadTrim(filename)
x=xlsread(filename);
y=x(:,10:17);

for i=1:size(y,2)
    y(:,i)=smooth(y(:,i),5,'lowess');
    y(:,i)=y(:,i)-min(y(:,i));
    y(:,i)=y(:,i)./max(y(:,i));
end