ReadTrim.m reads an excel file and gets the pressure data perpendixular to the foot.

Data.m is a class file which has 3 properties: filename, matrix, medians, min, max.
filename is a excel filename.
matrix is the matrix corresponding to that file.
medians is an array which contains the column-wise medians.
min is an array which contains the column-wise minimum.
max is an array which contains the column-wise maximum.

ReadExcel.m is the function that returns a cell array of objects of the class Data.
