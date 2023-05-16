dz = duggasystem(4.5, [-3; 3.5; 1.5]);
[t, y] = duggark2(@duggasystem, [1, 2], [1; 0; -3], 30);