% ENSC180 Lab 3: Plot multiple curves in one figure.
close all;
clear all;
% Rate-distortion performance of five methods.
BPP_BPG = [0.0969, 0.1360, 0.2235, 0.3031, 0.4052, 0.5331, 0.6847, 0.8666, 0.9668, 1.0802];
PSNR_BPG = [27.14, 28.15, 29.80, 30.97, 32.23, 33.54, 34.86, 36.22, 36.89, 37.57];
BPP_VVC = [0.1260, 0.3151, 0.4711, 0.6778, 0.9428, 1.1570];
PSNR_VVC = [28.86, 32.23, 34.07, 35.97, 37.84, 39.10];
BPP_Lee19 = [0.1005, 0.1453, 0.2025, 0.2982, 0.4340, 0.6900, 0.9943, 1.2711];
PSNR_Lee19 = [27.64, 28.80, 29.89, 31.28, 32.85, 35.17, 37.32, 38.94];
BPP_Hu21 = [0.207, 0.308, 0.410, 0.795, 1.059, 1.217];
PSNR_Hu21 = [30.06, 31.61, 32.84, 36.23, 38.03, 38.90];
BPP_GLLMM =[0.0857, 0.1531, 0.2875, 0.4408, 0.6434, 0.7886, 0.9013];
PSNR_GLLMM =[27.86, 29.58, 31.88, 34.07, 36.09, 37.17, 37.95];
% To do: Plot the five curves according to the requirements.
%Q1
plot (BPP_GLLMM,PSNR_GLLMM, 'Color','magenta', 'Marker','*', 'LineWidth', 2);
hold on
plot(BPP_VVC,PSNR_VVC,'Marker','o','Color','blue');
hold on
plot (BPP_Hu21,PSNR_Hu21, 'Linestyle','--','Marker','>','Color','cyan','LineWidth', 1);
hold on
plot(BPP_Lee19, PSNR_Lee19, 'Marker','.', 'Color','green');
hold on
plot(BPP_BPG, PSNR_BPG,'LineStyle', '-.', 'Color','red','Marker','+', 'LineWidth', 0.75);
legend('GLLMM','VVC','Hu21','Lee19','BPG');

%Q4 and 5
xlabel('Bits/Pixel(BPP)');
ylabel('PSNR(dB)');

%Q6
grid on

