%Main program

%loading the track and starting values
load bana-88.mat

%plotting track
plotTrack(portx, porty, ver, v0, a0);
hold on

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

%plotting the rockets position in different timestamps
%for n = 1:397
%   r = rem(n, 20);
%    if r == 0 
%      plot(z(n, 1), z(n, 3), 'ob');
%    end
%end
%hold off

%plot the rockets speed
vVec = zeros(1, 397);
for i = 1:397
    vVec(1, i) = sqrt(z(i, 2)^2+z(i, 4)^2);
end

figure(2);
tTrans = t';
plot(tTrans, vVec);



%plotting the angle of the engine
figure(3)
p = nsidedpoly(3, 'Center', [0 ,0], 'SideLength', 1);
p_zero=rotate(p,90,[0, 0]);

p_start = rotate(p_zero, angle(0)*180/pi, [0, 0]);
tiledlayout(3,3)
n = 55;


nexttile
plot(p_zero);
hold on
[a, b] = direction(0);
plot(a, b, 'o');


for i = 1:55
    if angle(i) ~= angle(i-1) 
        p_rotated = rotate(p_start, angle(i) * 180/pi, [0,0]);
        nexttile
        plot(p_rotated);
        hold on
        [x, y] = direction(i);
        plot(x, y, 'o');
        
    end
end