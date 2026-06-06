%% ECG Filter Project - Initialization Script
clear; clc; 

%Simulation Parameters 
Fs = 1000;        %Sampling Frequency = 1000 Hz
T_sim = 2;        %Total Simulation time = 2 seconds

%Signal Parameters
f_heart = 1.5;    %Simulated heart rate signal component (1.5 Hz ~ 90 BPM)
amp_heart = 1.0;  %Clean Signal Amplitude

%Noise Parameters 
f_noise = 50;     %Noise signal frequency (standard 50 Hz)
amp_noise = 0.4;  %Noise signal Amplitude

%Filter Specifications
f_cutoff = 30;    %Cutoff frequency at 30 Hz to remove 50 Hz noise

%Normalizing cutoff frequency
Wn = f_cutoff / (Fs/2); 

%Create a 4th Order Butterworth filter arrays for the discrete filter block
[num_coeff, den_coeff] = butter(4, Wn, 'low'); 

disp('Project parameters loaded successfully into Workspace');