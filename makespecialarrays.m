function [D, E, F] = makespecialarrays(M,N)

D = zeros(M,N)

E = ones(M);
E(:,:) = 2
% OR
E = 2*ones(N)
% F will be a N x N matrix with 6’s on the diagonal
%USE eye() then replace with 6??
F = eye(N)
F(1,1) = 6
F(2,2) = 6
%OR
F = 6*eye(N)
