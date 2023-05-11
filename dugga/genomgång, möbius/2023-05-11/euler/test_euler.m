[t, y] = euler(@myfun, [0 3], 1, 50);

plot(t, y, ':');
hold on

[t, y] = euler(@myfun, [0, 3], 1, 100);
plot(t, y, '--');

[t, y] = ode45(@myfun, [0, 3], 1);
plot(t, y)
legend('euler n = 5', 'euler n = 100', 'ode45')