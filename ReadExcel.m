function y=ReadExcel()
    x=dir();
    index=0;
    for i=1:length(x)
        if endsWith(x(i).name,".xlsx")
            index=index+1;
        end
    end
    y=cell(index,1);

    index=1;
    for i=1:length(x)
        if endsWith(x(i).name,".xlsx")
            y{index}=Data(extractBefore(x(i).name,".xlsx"),ReadTrim(x(i).name));
            index=index+1;
        end
    end