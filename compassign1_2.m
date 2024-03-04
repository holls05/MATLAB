w1 = [1, 2, -1, 3]';
w2 = [4, 1, 1, 8]';
w3 = [1, 0, 2, 2]';
w4 = [-1, 1, 2, -1]';

%write as a matrix
S1 = [w1,w2,w3,w4]

%show that S1 is not equal to R4
dimension_of_S1 = rank(S1) 
% because the rank is 3, it is 3 dimension so it is not in R4


%Find which vector is a multiple of each other and take out of the set
[B,RB] = rref(S1)
idx = 1 : size(S1,2) % the number of columns 
idx(RB) = [] % the number of independent columns/pivot columns
S1_dependent = B(:,idx) % indicate that this column vector will be eliminated from subspace S1 

new_S1 = [w1, w2,w3] %original column vectors with just L.I. column vectors 


%the span of S1 is a hyperplane with a basis {w1,w2,w3}

%ambient_space = size(S1, 1);
if dimension_of_S1 == 3 %ambient space - 1 determines if it is hyperplane
    disp('S1 is a hyperplane');
elseif dimension_of_S1 == 4 
    disp('S1 is a plane');
end 



% Q2.2

z2 = [1,0,2,2]'
z3 = [3,4,0,8]'

Z2_S1 = [new_S1, z2]
Z2_S1reduced = rref(Z2_S1)

Z3_S1 = [new_S1, z3]
Z3_S1reduced = rref(Z3_S1)


%z2 and z3 are multiples of vectors in S1 and therefore belong in
%S1 bc they are linearly dependent

%Q2.3
a = 6 ;
z1 = [2, 4, -2, a]';
S2 = [z1,z2,z3]
rref(S2);
dimension_of_S2 = rank(S2) % dimension is 2 bc rank = 2


%Q2.4
a = 5

q4_z1 = [2,4,-2,a]';
q4_S2 = [-q4_z1,-z2,-z3];

M1 = new_S1;
M2 = q4_S2;

M = [M1 M2]

% Dimension of subspace S1 ∩ S2 is equal to the rank of the null space basis
nullspace_basis = null(M)
rank(nullspace_basis)
dim_of_vectors = rref(nullspace_basis)
dimension_intersection = rank(nullspace_basis)









