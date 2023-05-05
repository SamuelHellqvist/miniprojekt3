%Main program

%laddar in banan
load bana-88.mat

%plottar banan
plotTrack(portx, porty, ver, v0, a0);
hold on


n = 55; %raketen kommer att flyga i 55 sekunder

%start koordinater för raketen
rocketStartx = 90;
rocketStarty = 0;

for i=1:n
    [rocketX, rocketY] = steering(@angle, i);
    h1 = plot(rocketX,rocketY,'or','MarkerSize',5,'MarkerFaceColor','r')
    pause(1)
    delete(h1)
end

[u, z] = mass(4);