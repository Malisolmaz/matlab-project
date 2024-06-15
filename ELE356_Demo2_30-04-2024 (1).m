clear all
close all

% Time constants
Ts = 0.001;
t = 0:Ts:8;

% Sys Coef
K = 112.45;

% Sys Def
G = tf(K,[1 4 2]);

% Discrete Conversion
G_d = c2d(G,Ts,'zoh');
[Ag_d,Bg_d,Cg_d,Dg_d] = ssdata(G_d);

% Initialization
x = [0;0];
y = zeros(1,length(t));

for i = 1:length(t)
    
    w(i) = 1;
    
    x = Ag_d*x + Bg_d*w(i);
    y(i) = Cg_d*x + Dg_d*w(i);
    
end

figure();hold on;
box on;

plot(t,w,'DisplayName','Input Signal');
plot(t,y,'DisplayName','Output Signal');
legend('show');
title('State Space Simulation Result');


