function [ velocity ] = updateVelocity( currentVelocity, acceleration, timeIncrement )
%Tyler Sriver October 15, 2013
%   This function calculates the velocity after a specified time increment
velocity = currentVelocity  + (acceleration)*(timeIncrement);
end

