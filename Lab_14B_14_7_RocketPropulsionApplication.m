%Lab 14.7 Rocket Propulsion Application

%the equation for the motion of a rocket propelled sled is, from Newton's
%Law m(dv/dt) = f - cv (m is sled mass(kg), f is rocket thrust, c is the air
%resistance coefficient(N*s/m)). Suppose v(0) = 0 m/s

%defining values given
m = 1000;
c = 500;

hold on
for f = 20000:20000:80000
    [t,V] = ode45(@(t,V) (1/m)*(f - c*V), [0 10], 0);
    plot(t,V)
end
grid on 
title("Rocket Sled Propulsion Velocity vs Time Graph")
xlabel("Time (seconds)")
ylabel("Velocity (m/s)")
legend("Rocket Thrust 20K","Rocket Thrust 40K","Rocket Thrust " + ...
    "60K","Rocket Thrust 80K", location = "northwest")