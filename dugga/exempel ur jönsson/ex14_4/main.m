%plottar ex 14.4 a
[t, y] = ode45(@yprim, [0, 3], 1);

plot(t, y);

%%
%plottar ex 14.4 b
[t, y] = ode45(@yprim2, [0, 5], 2);
plot(t, y);