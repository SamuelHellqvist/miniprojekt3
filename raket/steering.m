function [ux, uy] = steering(fun, t);
km = 2000;

ux = km * cos(fun(t));
uy = km * sin(fun(t));