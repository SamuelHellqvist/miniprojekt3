%Main program

%loading the track and starting values
load bana-88.mat

%plotting track
plotTrack(portx, porty, ver, v0, a0);
hold on

%the rocket will fly for 55 seconds
n = 55; 

%start coordinates
rocketStartx = 90;
rocketStarty = 0;

%start velocity for the rocket (engine not running)
startVx = v0*cosd(a0);
startVy = v0*sind(a0);

%starting position and velocity for the rocket
y0 = [rocketStartx, startVx, rocketStarty, startVy];

%differential equation for steering threw the track
[t,z] = ode45(@odefunc, [0, 55], y0);

%plotting the rockets way threw the track
plot(z(:,1),z(:,3));
hold off