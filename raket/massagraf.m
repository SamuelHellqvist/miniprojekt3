massa = zeros(1, 55);
massaprim = zeros(1, 55);
for i = 1:55
    [massa(1, i), massaprim(1, i)] = mass(i);
end

figure(1)
plot(massa(1, :))
xlabel("massa")
ylabel("tid")

figure(2)
plot(massaprim(1, :))
xlabel("massans förändring")
ylabel("tid")