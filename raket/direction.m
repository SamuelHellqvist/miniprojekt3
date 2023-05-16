%function for what angle the engine will have throughout the flight

function [x, y] = direction(t)

if (0 <= t) && (t < 5)
    x = -0.57735;
    y = 0;

elseif (5 <= t) && (t < 15)
    x = 0;
    y = 0.57735;

elseif (15 <= t) && (t < 17)
    x = -0.408248;
    y = 0.408248;

elseif(17 <= t) && (t < 22)
    x = 0.408248;
    y = 0.408248;

elseif(22 <= t) && (t < 27)
    x = 0.408248;
    y = -0.408248;

elseif(27 <= t) && (t < 31)
    x = 0.57735;
    y = 0;

elseif(31 <= t) && (t < 34)
     x = 0.408248;
     y = 0.408248;

elseif(34 <= t) && (t < 44)
    x = 0;
    y = 0.57735;

elseif(44 <= t) && (t <= 55)
    x = 0.57735;
    y = 0;
    
end