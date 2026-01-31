%% Half-Bridge Inverter Parameters
% Centralized parameter file for Simulink model

% DC Bus
Vdc = 800;              % Total DC link voltage [V]

% Output
fo = 50;                % Output frequency [Hz]

% PWM
fsw = 20000;            % Switching frequency [Hz]
m = 0.8;                % Modulation index (0–1)

% Load
Rload = 11;             % Load resistance [Ohm]
Lload = 1e-3;           % Load inductance [H]
Cload = 50e-6;          % Load Capacitor [F]

% Simulation
Ts = 1/fsw;             % PWM sampling time
