function [ teeLocationX, teeLocationY, holeLocationX, holeLocationY ] = plotCourse( courseSizeX, courseSizeY, ballLocationX, ballLocationY,obstacleLocationX, obstacleLocationY, obstacleLengthX, obstacleLengthY, holeLocationX, holeLocationY)
% Tyler Sriver October 22, 2013
%   This function will plot a putting surface with an obstacle a tee and a
%   hole
figure(1);
teeLocationX = ballLocationX;
teeLocationY = ballLocationY;
plot(teeLocationX, teeLocationY);
title('Putting Course');
hold on;
plot(holeLocationX, holeLocationY);
hold on;
axis([0, courseSizeX, 0, courseSizeY]);
hold on;
x = [obstacleLocationX, obstacleLocationX + obstacleLengthX, obstacleLocationX + obstacleLengthX, obstacleLocationX, obstacleLocationX];
y = [obstacleLocationY, obstacleLocationY, obstacleLocationY + obstacleLengthY, obstacleLocationY + obstacleLengthY, obstacleLocationY];
line(x,y);
plot(holeLocationX, holeLocationY, 'og')
plot(teeLocationX, teeLocationY, 'or')


    


end

