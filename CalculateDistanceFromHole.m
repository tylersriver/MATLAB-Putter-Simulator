function [ distanceFromHole ] = CalculateDistanceFromHole( ballLocationX, ballLocationY, holeLocationX, holeLocationY )
%Tyler Sriver October 15, 2013
%   This function will find the distance from the ball to the hole given
%   the currentposition of the ball
%
distanceFromHole = sqrt((ballLocationX - holeLocationX)^2 + (ballLocationY - holeLocationY)^2);

end

