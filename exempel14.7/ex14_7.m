opt = odeset('Events', @events);
[t,z,te,ze] = ode45(@kast,[0 2],[0 10 0 10],opt);
plot(z(:,1),z(:,3))
xlabel('x')
ylabel('y')