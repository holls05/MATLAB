close all
clear all
% Define the initial unit vector
u = [4/sqrt(20); 2/sqrt(20)]; 

% Define the rotation matrix function
theta = 2*pi / 6; % Angle for hexagon
R = [cos(theta), -sin(theta); sin(theta), cos(theta)];

% Initialize the matrix to store vectors
M = zeros(2, 6); 
M(:, 1) = u;

for i = 2:6
    M(:, i) = R^(i-1)*u; 
end

figure;     
origin = zeros(1,size(M,2)); 
plot([origin; M(1,:)],[origin; M(2,:)], 'LineWidth',3);
title('Original Vectors of a Hexagon')

%Part 2:
new_theta =  2*pi / 3; 

rotate_M = zeros(2, 6);

for i = 1:6
    rotate_M(:, i) = R^(i+1) * u;
end

% Plotting
figure;
origin = zeros(1, size(rotate_M, 2)); 
plot([origin; rotate_M(1, :)], [origin; rotate_M(2, :)],'LineWidth',3);

title('Rotated Vectors');

%Reflection across the x axis

figure;
reflect_M_y = M
reflect_M_y(1,:) = -reflect_M_y(1,:)
origin = zeros(1,size(reflect_M_y,2)); 
plot([origin; reflect_M_y(1,:)],[origin; reflect_M_y(2,:)],'Linewidth',3);
title('Reflected Vectors over Y axis)')




















figure;
reflect_M = -M;
origin = zeros(1,size(reflect_M,2)); 
plot([origin; reflect_M(1,:)],[origin; reflect_M(2,:)]);
title('Reflected Vectors( x and y)')









%Question 3:
theta1 = pi




