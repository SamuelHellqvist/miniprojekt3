%%plottar funktion för ex 14.3 a
tspan = [0,2];
ybv = [1; -1];
n = 100;
[t,z] = ode45(@system_14_3_a, tspan, ybv, n);
plot(t, z(:,1));

%%
%plottar funtion för ex 14.3 b
tspan = [1,2];
ybv = [1; 0; -3];

[t,z] = rk2(@system_14_3_b, tspan, ybv, 32);

plot(t, z(1,:));
