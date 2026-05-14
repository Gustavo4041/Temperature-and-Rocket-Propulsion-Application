%Temperature Application

%defining the values we are given
Ti = 70;
Tb = 170;

%report the temperature after 10, 20, and 40 seconds
%using the ode45 function to get the values needed for the given times

%solving for 10 seconds
[~,T] = ode45(@(t,T) (1/10)*(Tb - T), [0 10], Ti);
n = length(T);
fprintf("The temperature of the object after 10s is %.1f Fahrenheit\n",T(n))

%solving for 20 seconds
[t,T] = ode45(@(t,T) (1/10)*(Tb - T), [0 20], Ti);
n = length(T);
fprintf("The temperature of the object after 10s is %.1f Fahrenheit\n",T(n))

%solving for 40 seconds
[t,T] = ode45(@(t,T) (1/10)*(Tb - T), [0 40], Ti);
n = length(T);
fprintf("The temperature of the object after 10s is %.1f Fahrenheit\n",T(n))

%HOW LONG DOES IT TAKE FOR THE OBJECT TO REACH 160F???
%using logical array to solve for when obj is near or at 160F
near160Degrees = T>159.5 & T<160.5;
fprintf("The object reaches 160 Fahrenheit at %.1f seconds\n",t(near160Degrees))

%plotting the function for the first 40 seconds
plot(t,T)
ylim([0 180])
grid on
title("Object Temperature Increase vs Time Plot")
xlabel("Time (seconds)")
ylabel("Temperature (fahrenheit)")