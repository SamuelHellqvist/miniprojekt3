function dy = duggasystem(t, y)

dy = [y(2);
      y(3);
      y(3)-3*y(2)*y(1)-t*y(1)];