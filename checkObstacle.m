function [ currentVelocity ] = checkObstacle( ballLocationX, ballLocationY, currentVelocity, obstacleLocationX, obstacleLocationY, obstacleLengthX, obstacleLengthY) 
%Tyler Sriver October 29, 2013
%   This function checks if the ball hit the obstacle
 ballRadius = .021335;
 safetyFactor = .02;
if ((ballLocationX + ballRadius + safetyFactor  >= obstacleLocationX) && (ballLocationX - ballRadius - safetyFactor  <= (obstacleLocationX + obstacleLengthX)))
    if ((ballLocationY + ballRadius + safetyFactor >= obstacleLocationY) && (ballLocationY - ballRadius - safetyFactor <= (obstacleLocationY + obstacleLengthY)))
        currentVelocity = 0;
    end
end

if(ballLocationX - ballRadius < .04 || ballLocationX + ballRadius > 1.03)
    if (ballLocationY - ballRadius < .04 || ballLocationY + ballRadius > 1.63)
        currentVelocity = 0;
    end
end
       
end

