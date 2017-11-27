classdef Data
    properties
        filename
        matrix
        medians
    end

    methods
        function y=Data(filename,matrix)
            y.filename=filename;
            y.matrix=matrix;
            y.medians=median(matrix);
        end
    end
end