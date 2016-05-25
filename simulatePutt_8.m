function [ ballLocationX, ballLocationY, bumperCounter] = simulatePutt_8( initialVelocity, initialAngle, acceleration, ballLocationX, ballLocationY, timeIncrement, initialTime, courseSizeX, courseSizeY, obstacleLocationX, obstacleLocationY, obstacleLengthX, obstacleLengthY, finished )
%Tyler Sriver October 15, 2013
%   This function will simulate a single putt using an initial velocity and
%   angle, and will return the final ball location.
bumperCounter = 0;
currentAngle = initialAngle;
currentVelocity = initialVelocity;
[ballLocationX, ballLocationY, currentAngle, currentVelocity, bumperCounter] = checkBumper( ballLocationX, ballLocationY, currentAngle, courseSizeX, courseSizeY, currentVelocity, bumperCounter);
[currentVelocity] = checkObstacle( ballLocationX, ballLocationY, currentVelocity, obstacleLocationX, obstacleLocationY, obstacleLengthX, obstacleLengthY);
simulationTime = initialTime + timeIncrement;

while(currentVelocity > 0 && simulationTime <= 10)
%iterations
simulationTime = simulationTime + timeIncrement;
[ballLocationX, ballLocationY] = updatePosition(ballLocationX, ballLocationY, currentVelocity, currentAngle, timeIncrement);
currentVelocity = updateVelocity(currentVelocity, acceleration, timeIncrement);
[ballLocationX, ballLocationY, currentAngle, currentVelocity, bumperCounter] = checkBumper( ballLocationX, ballLocationY, currentAngle, courseSizeX, courseSizeY, currentVelocity, bumperCounter);
[currentVelocity] = checkObstacle( ballLocationX, ballLocationY, currentVelocity, obstacleLocationX, obstacleLocationY, obstacleLengthX, obstacleLengthY);
    if (finished)
      plot(ballLocationX, ballLocationY, 'or'); 
    end
end


end

