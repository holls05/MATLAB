% Define the initial unit vector
u = [4/sqrt(20); 2/sqrt(20)]; % You can choose any non-zero initial vector

% Define the rotation matrix function
theta = 2*pi / 6; % Angle for hexagon
R = [cos(theta), -sin(theta); sin(theta), cos(theta)];

% Initialize the matrix to store vectors
M = zeros(2, 6); 
M(:, 1) = u;

% Generate five new vectors by rotating the initial vector
for i = 2:6
    M(:, i) = R^(i-1) * u;
end

     
origin = zeros(1,size(M,2)); 
plot([origin; M(1,:)],[origin; M(2,:)]);





% 2: Rotate a new theta

newtheta = 8*pi/6
figure;
new_R = [cos(newtheta), -sin(newtheta); sin(newtheta), cos(newtheta)];

% Initialize the matrix to store vectors
new_M = zeros(2, 6); 
new_M(:, 1) = u;

% Generate five new vectors by rotating the initial vector
for i = 2:6
    new_M(:, i) = R^(i-1) * u;
end

     
origin= zeros(1,size(new_M,2)); 
plot([origin; new_M(1,:)],[origin; new_M(2,:)]);
