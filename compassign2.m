% Define the initial unit vector
u = [4/sqrt(20); 2/sqrt(20)]; % You can choose any non-zero initial vector

%u = [1;2];
plot(u)
% Define the rotation matrix function
theta = 2*pi / 6; % Angle for hexagon
R = [cos(theta), -sin(theta); sin(theta), cos(theta)];

% Initialize the matrix to store vectors
M = zeros(2, 6); 
M(:, 1) = u;

% Generate five new vectors by rotating the initial vector
for i = 2:6
    M(:, i) = R^(i-1)*u; % taking 
end

     
origin = zeros(1,size(M,2)); 
plot([origin; M(1,:)],[origin; M(2,:)]);



% Define the angle for rotation
new_theta = pi / 3; % Choose your own value of theta

% Initialize the matrix to store vectors after second rotation
rotate_M = zeros(2, 6);

% Generate five new vectors by rotating the vectors obtained from part 1) by angle theta
for i = 1:6
    rotate_M(:, i) = R^i * u;
end

% Plotting
origin = zeros(1, size(rotate_M, 2)); 
figure;
hold on;
plot([origin; rotate_M(1, :)], [origin; rotate_M(2, :)]);

% Add labels and title
title('Rotated Vectors');
xlabel('X');
ylabel('Y');
axis equal;

