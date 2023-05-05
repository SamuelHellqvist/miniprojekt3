function [value, isterminal, derection] = events(t, z)

value = z(3)-1;
isterminal = 1;
derection = -1;