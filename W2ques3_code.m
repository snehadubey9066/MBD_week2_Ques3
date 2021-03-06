%% Conditions :-
% Rise time < 5 s
% Overshoot < 10%
% Steady-state error < 2%

%% Uncomment section to check the values of rise time and overshoot 
%% test values of kp,ki,kd and time parameters for PID  

% t = 0:2:50;
% m=1000;
% b=50;
% u = 1;
% r = 10;
% 
% s = tf('s');
% P_cruise = 1/(m*s+b);

% Kp = 330;
% Ki = 45;
% Kd = 89;
% C = pid(Kp,Ki,Kd);
% T = feedback(C*P_cruise,1);
% Risetime_PID = stepinfo(T).RiseTime
% OverShoot_PID = stepinfo(T).Overshoot
% step(T,t)

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

%% test values of time parameters for PD controller
% Kp = 100;
% Kd = 10;
% C = pid(Kp,Kd);
% T = feedback(C*P_cruise,1);
% Risetime_PD = stepinfo(T).RiseTime
% OverShoot_PD = stepinfo(T).Overshoot
% step(r*T,t)

%% run the simulink model

sim("W2ques3_system.slx");
open_system('W2ques3_system/Scope')