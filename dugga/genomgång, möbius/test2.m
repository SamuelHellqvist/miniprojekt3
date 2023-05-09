[t, x] = rk2(@func, [1,2], [1; 0; -3], 32)


plot(t, x(1,:));
grid on