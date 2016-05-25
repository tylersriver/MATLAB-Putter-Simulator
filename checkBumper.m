function [ ballLocationX, ballLocationY, currentAngle, currentVelocity, bumperCounter] = checkBumper( ballLocationX, ballLocationY, currentAngle, courseSizeX, courseSizeY, currentVelocity, bumperCounter)
%Tyler Sriver October 29, 2013
%   This function updates the position and angle of the golf ball if it
%   hits the bumber 
ballRadius = .021335;
if (ballLocationX + ballRadius > courseSizeX)
    
    x = cosd(currentAngle) * currentVelocity;
    y = sind(currentAngle) * currentVelocity;
    x = x * .5;
    currentVelocity = sqrt(x^2 + y^2);
    
    ballLocationX = courseSizeX - (ballLocationX - courseSizeX);
    currentAngle = 180 - currentAngle;
    bumperCounter = bumperCounter +1;
%     currentVelocity = currentVelocity * .53;
elseif (ballLocationX - ballRadius  < 0)
    
    x = cosd(currentAngle) * currentVelocity;
    y = sind(currentAngle) * currentVelocity;
    x = x * .5;
    currentVelocity = sqrt(x^2 + y^2);
    
    ballLocationX = -ballLocationX;
    currentAngle = 180 - currentAngle;
    bumperCounter = bumperCounter +1;
%     currentVelocity = currentVelocity * .53;
elseif (ballLocationY + ballRadius > courseSizeY)
    
    x = cosd(currentAngle) * currentVelocity;
    y = sind(currentAngle) * currentVelocity;
    y = y * .5;
    currentVelocity = sqrt(x^2 + y^2);
    
    ballLocationY = courseSizeY - (ballLocationY - courseSizeY);
    currentAngle = 0 - currentAngle;
    bumperCounter = bumperCounter +1;
%     currentVelocity = currentVelocity * .53;
elseif (ballLocationY - ballRadius < 0)
    
    x = cosd(currentAngle) * currentVelocity;
    y = sind(currentAngle) * currentVelocity;
    y = y * .5;
    currentVelocity = sqrt(x^2 + y^2);
    
    ballLocationY = -ballLocationY;
    currentAngle = 0 - currentAngle;
    bumperCounter = bumperCounter +1;
%     currentVelocity = currentVelocity * .53;
end
end

