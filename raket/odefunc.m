%function that will steer the rocket
function dz = odefunc(t, z)

%constants
c = 0.3;
g = 9.82;

%mass and velocity values
[m1,m2] = mass(t);
[sx, sy] = steering(angle(t));

%ode system
dz = [z(2)
    (-c/m1)*sqrt(z(2)^2+z(4)^2)*z(2)+(m2/m1)*sx
    z(4)
     (-c/m1)*sqrt(z(2)^2+z(4)^2)*z(4)+(m2/m1)*sy-g];

end