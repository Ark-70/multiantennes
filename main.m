%% clean

clc; clear all; close all;

M =  5; % nb capteurs
N = 500; % lonngueur d'echantillons
varv = 0.1; % variance bruit
vars = 1; % variance du signal d'interet
teta0 = 40; % degres
K = 1; % Juste une source

a1 = (0:M-1)';
a1 = exp(-1j*pi.*a1*sin(teta0));
A = [a1];

% s = randn(M, 1); Ca c'est en reel

sn = sqrt(vars/2)*(randn(1,N) + i*randn(1,N)); % loi gaussienne imaginaire

vn = sqrt(varv/2)*(randn(M,N) + i*randn(M,N)); % vu que le bruit = bruit thermique, autant de vecteur de bruit que de capteurs

Y = A*sn+vn; % ce qui se balade sur le canal/à l'entrée des capteurs
