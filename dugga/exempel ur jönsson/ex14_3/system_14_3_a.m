function dz = system_14_3_a(t, z)

dz = [z(2)
      t*z(2)-z(1)^2
    ];
end