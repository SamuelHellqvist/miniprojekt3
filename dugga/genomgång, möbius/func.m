function dy = func(t,z)

dy = [z(2)
    z(3)
    z(3)-3*z(2)*z(1)-t*z(1)
    ];

end