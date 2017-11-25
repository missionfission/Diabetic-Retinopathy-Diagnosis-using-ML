classdef Data
    properties
        filename
        matrix
        medians
        max
        min
    end

    methods
        function y=Data(filename,matrix)
            y.filename=filename;
            y.matrix=matrix;
            y.medians=zeros(1,size(matrix,2));
            y.max=zeros(1,size(matrix,2));
            y.min=zeros(1,size(matrix,2));
            for i=1:size(matrix,2)
                matrix(:,i)=sortrows(matrix(:,i));
                y.medians(i)=matrix(fix(size(matrix,1)/2),i);
                y.min(i)=matrix(1,i);
                y.max(i)=matrix(size(matrix,1),i);
            end
        end
    end
end