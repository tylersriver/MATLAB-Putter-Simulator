function [ length, perimeter ] = enclosedArea( width, area )
% Tyler Sriver October 15, 2013
%   This function finds the Length and the Perimeter, or the total fence
%   amount
length = (area-((width*width)/4)/width;
perimeterRect = width+(length*2);
perimeterTriangle = 2*sqrt(width*width/2);
perimeter = perimeterRect + perimeterTriangle;

end

