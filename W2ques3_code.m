%% Rise time < 5 s
%% Overshoot < 10%
%% Steady-state error < 2%

t = 0:2:50;
m=1000;
b=50;
u = 10;
r = 10;

s = tf('s');
P_cruise = 1/(m*s+b);