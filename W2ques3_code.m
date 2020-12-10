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

%% test values of time parameters for P controller
% Kp = 100;
% C = pid(Kp);
% T = feedback(C*P_cruise,1);
% step(r*T,t)
% axis([0 20 0 10])
% Risetime_P = stepinfo(T).RiseTime
% OverShoot_P = stepinfo(T).Overshoot

%% test values of time parameters for PI controller
% Kp = 100;
% Ki = 20;
% C = pid(Kp,Ki);
% T = feedback(C*P_cruise,1);
% step(r*T,t)
% axis([0 50 0 15])
% Risetime_PI = stepinfo(T).RiseTime
% OverShoot_PI = stepinfo(T).Overshoot