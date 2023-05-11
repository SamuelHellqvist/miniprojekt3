function [t, y] = rk2vec(fun, interval, A, n)

a = interval(1); 
b = interval(2);

h = (b-a)/2;
t = linspace(a, b, n+1);
y(:, 1) = A;


for i = 1:n
    k1 = fun(t(i), y(:, i));
    k2 = fun(t(i)+h, y(:, i) + h*k1);
    y(:, i+1) = y(:, i) + (h/2)*(k1+k2);
end
