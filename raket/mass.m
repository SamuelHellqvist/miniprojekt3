%function for the mass in the rocket (fuel will decline and so will mass

function [m, mprim] = mass(t)

if 0 <= t && t < 5
    m = 20;
    mprim = 0;
elseif 5 <= t && t < 55
    m = 20 - 0.2*(t-5);
    mprim = -0.2;
elseif 55 <= t
    m = 10;
    mprim = 0;
end

