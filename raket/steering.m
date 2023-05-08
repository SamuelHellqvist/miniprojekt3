%function for x and y velocity

function [ux, uy] = steering(t)

    %the speed will be constant
    km = 2000;
    
    ux = km * cos(t);
    uy = km * sin(t);
end