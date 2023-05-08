%function for what angle the engine will have throughout the flight

function theta = angle(t)
startAngle = (2*pi)/3;

if (0 <= t) && (t < 5)
    theta = startAngle; %right and up

elseif (5 <= t) && (t < 15)
    theta = (3*pi)/2; %up

elseif (15 <= t) && (t < 17)
    theta = (7*pi)/4; %right and up

elseif(17 <= t) && (t < 22)
    theta = (5 * pi)/4; %left and up

elseif(22 <= t) && (t < 27)
    theta = (3 * pi)/4; %right and down

elseif(27 <= t) && (t < 31)
    theta = pi; %right

elseif(31 <= t) && (t < 34)
    theta = (5*pi)/4; %right and up

elseif(34 <= t) && (t < 44)
    theta = (3 * pi)/2; %up

elseif(44 <= t) && (t <= 55)
    theta = pi; %right
    
end