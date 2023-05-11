function dz = mysystem(t, z)

dz = [z(2)
 z(3)
 z(3)-3*z(2)*z(1)-t*z(1)];
end
