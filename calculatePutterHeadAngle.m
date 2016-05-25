function [ putterHeadAngle ] = calculatePutterHeadAngle( initialVelocity )
%Tyler Sriver October 15, 2013
%   This function finds the angle that the putter must be pulled back to
%   launch the ball at the given initial velocity

putterHeadAngle = 12.98 * initialVelocity^2 + 67.777 - 2.3526;

end

