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
hold on

%plotting the rockets position in different timestamps
for n = 1:397
    r = rem(n, 20);
    if r == 0 
      plot(z(n, 1), z(n, 3), 'ob');
      %p = nsidedpoly(3, 'Center', [z(n, 1) ,z(n, 3)], 'Sidelength', 10);
      
     
      %p_rotated=rotate(p,angle(n*0.1385490428)*(180/pi), [z(n, 1) ,z(n, 3)]);
      %plot(p_rotated);
    end
end
hold off

%plotting the angle of the engine


hold off