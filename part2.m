% a) Create array A
A = zeros(20, 30)
A(1:11, :) = 3
A(12:20, :) = 4.3

% b) Create array B
B = A;
B(13, :) = 1 ./ (1:30); % Element-wise division of 1 by each element from 1 to 30 in row 13

% c) Create array C
C = B;
C(:, 31) = 5; % Assigning 5 to all elements in the 31st column

% d) Create array W
W = C.^2; % Element-wise squaring of array C

% e) Calculate sumAll
sumAll = sum(W(:));
