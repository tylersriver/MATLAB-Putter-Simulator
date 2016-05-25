clear; clc;
disp('The Simulator is running')
holeLocationX = .26;
holeLocationY = .74; 
teeLocationX = input('Enter tee location x: ');
teeLocationY = input('Enter tee Location y: ');
acceleration = -.117;
timeIncrement = .05;
tableX = 1.07;
tableY = 1.68;
initialTime = 0;
courseSizeX = 1.07;
courseSizeY = 1.68;
obstacleLocationX = .39;
obstacleLocationY = .33;
obstacleLengthY = .38;
obstacleLengthX = .09;


tempDistance = CalculateDistanceFromHole(teeLocationX, teeLocationY, holeLocationX, holeLocationY);
bestVelocity = .3;
bestAngle = 0;

plotCourse( courseSizeX, courseSizeY, teeLocationX, teeLocationY, obstacleLocationX, obstacleLocationY, obstacleLengthX, obstacleLengthY, holeLocationX, holeLocationY);

start = clock;

for initialAngle = 0:3:359;
    for initialVelocity = .3:.02:1.8;
        [ ballLocationX, ballLocationY, bumperCounter] = simulatePutt_8( initialVelocity, initialAngle, acceleration, teeLocationX, teeLocationY, timeIncrement, initialTime, courseSizeX, courseSizeY, obstacleLocationX, obstacleLocationY, obstacleLengthX, obstacleLengthY, 0);
        distanceBall = CalculateDistanceFromHole(ballLocationX, ballLocationY, holeLocationX, holeLocationY);
        if (distanceBall < tempDistance && bumperCounter < 3)
            tempDistance = distanceBall;
            bestVelocity = initialVelocity;
            bestAngle = initialAngle;
            fprintf('Better Angle: %2.2f Better Velocity: %2.2f Better Distance: %2.2f \n', bestAngle, bestVelocity, tempDistance)
        end
    end
end

[ ballLocationX, ballLocationY, bumperCounter] = simulatePutt_8( bestVelocity, bestAngle, acceleration, teeLocationX, teeLocationY, timeIncrement, initialTime, courseSizeX, courseSizeY, obstacleLocationX, obstacleLocationY, obstacleLengthX, obstacleLengthY, 1);

putterHeadAngle = calculatePutterHeadAngle(bestVelocity);
fprintf('The initial velocity of the ball is %6.2f m/s\n', bestVelocity)
fprintf('The initial angle of the ball is %2.0f degrees\n', bestAngle)
fprintf ('The distance from the ball to the hole is %2.3f meters\n', tempDistance) 
fprintf('The putter head angle required for inital velocity is %2.3f degrees \n', putterHeadAngle) 
disp('Simulator is done')
stop = clock;
time = etime(start, stop);
fprintf('The simulator took %2.1f seconds', -time);



