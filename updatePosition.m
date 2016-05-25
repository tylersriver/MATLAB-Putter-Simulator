function [ ballLocationX, ballLocationY ] = updatePosition( currentLocationX, currentLocationY, currentVelocity, currentAngle, timeIncrement)
%Tyler Sriver October 15, 2013
%   This function calculates the postition of the ball after a specified
%   time increment.
ballLocationX = currentLocationX + (currentVelocity)*cosd(currentAngle)*(timeIncrement);
ballLocationY = currentLocationY + (currentVelocity)*sind(currentAngle)*(timeIncrement);


end

