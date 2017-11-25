function y=ReadTrim(filename)
x=xlsread(filename);
y=x(:,10:17);