rng('default')
 A = rand(3)

 maximum_value = max(max(A))

[row column] = find(A == maximum_value)  % any other way?

fprintf('%6.2d')


%practice 2 part 1
%CASE 1:
m = 3, n = 2;
% filld with zeros

D = zeros(m,n)

E = ones(m);
E(:,:) = 2


% F will be a N x N matrix with 6’s on the diagonal
%USE eye() then replace with 6??
F = eye(n);
F(1,1) = 6;
F(2,2) = 6;
%OR
F = 6*eye(n)



%E == 1 % this gives me the logical respeonse 1 being true 0 being false