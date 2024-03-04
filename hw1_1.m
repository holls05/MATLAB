% ENSC 180, Assignment 1
% Q1: MPH to FPS conersion

%   Jie Liang, Jan. 2024

% 1mile = 1609m
% 1m = 3.28 ft

% convertion factor from MPH to FPS
mph_to_fps_factor = 1609 * 3.28 / 3600;

% create the conversion table
mph = 0 : 100 / 14 : 100;
fps = mph * mph_to_fps_factor;
mph_to_fps_table = [mph; fps]';

fprintf('     MPH      FPS\n');
fprintf('%8.2f %8.2f\n', mph_to_fps_table');

% write into a binary file
fileID = fopen('hw1_1.bin', 'w');
fwrite(fileID, mph_to_fps_table, 'double');
fclose(fileID);

% Open the binary file
fileID = fopen('hw1_1.bin', 'r');
read_table = fread(fileID, [15 2], 'double')
fclose(fileID);

% check the file size, which is 240 bytes,
% because there are 15x2=30 double, each needs 8 bytes.
s = dir('hw1_1.bin')
