function [t, y] = euler(fun, interval, A, n)
    a = interval(1); 
    b = interval(2);
    h = (b-a)/n;
    y(1) = A;
    t(1) = a;

    for i = 1:n
        y(i+1) = y(i) + h*fun(t(i), y(i));
        t(i+1) = t(i) + h;
    end
end