clear all
close all
%Part 1 Observation
% Case I
m = 10; 
n = 10; 

independent_columns_counter = 0;
dependent_columns_counter = 0;
for i = 1:5
    A = rand(m, n);
    if rank(A) == n
        independent_columns_counter = independent_columns_counter + 1;
    else
        dependent_columns_counter = dependent_columns_counter + 1;
    end
end
disp(['Case I - Linearly independent: ', num2str(independent_columns_counter)]);
disp(['Case I - Linearly dependent: ', num2str(dependent_columns_counter)]);


% Case II
m = 10; 
n = 9;

independent_columns_counter = 0; %reinitializes the counter for case II
dependent_columns_counter = 0;
for i = 1:5
    A = rand(m, n);
    if rank(A) == n
        independent_columns_counter = independent_columns_counter + 1;
    else
        dependent_columns_counter = dependent_columns_counter + 1;
    end
end
disp(['Case II - Linearly independent: ', num2str(independent_columns_counter)]);
disp(['Case II - Linearly dependent: ', num2str(dependent_columns_counter)]);


% Case III
m = 10; 
n = 11;

independent_columns_counter = 0;
dependent_columns_counter = 0;
for i = 1:5
    A = rand(m, n);
    if rank(A) == n 
        independent_columns_counter = independent_columns_counter + 1;
    else
        dependent_columns_counter = dependent_columns_counter + 1;
    end
end
disp(['Case III - Linearly independent: ', num2str(independent_columns_counter)]);
disp(['Case III - Linearly dependent: ', num2str(dependent_columns_counter)]);


%Question 1

%Case I.1. Generate a 12x12 matrix

m = 12; 
n = 12; 
A = rand(m, n);
b = rand(m,1); 

augmented_matrix1 = [A,b]
case_I= rref(augmented_matrix1)

%unique solution bc every row of the coeff matrix corresponds to a constant
%matrix b

%Case II.1. Generate a 15x13 matrix
m = 15; 
n = 13;
A = rand(m, n);
b = rand(m,1);

augmented_matrix2 = [A,b];
case_II = rref(augmented_matrix2)
% no solution as the second last row has the augmented matrix at 0 = 1
% which is not possible

%Case III.1. Generate a 15x16 matrix
m = 15; 
n = 16;
A = rand(m, n);
b = rand(m,1);

augmented_matrix3 = [A,b];
case_III = rref(augmented_matrix3)
%the last column of the coeff matrix is a free variable. it will create a
%general solution with parameters --> infinitely many solutions
  

%Question 2. Exceptions
%Case I.2. Generate a 3x3 matrix with a 3x1 constant matrix b
a1 = [3 2 -5]';
a2 = [1 1 -2]';
a3 = [5 3 -8]';
b = [4 1 6]'; % column vector of constants (right hand side values of an augmented matrix)

case1_augmentedmatrix = [a1 a2 a3 b] %augmented matrix Ax = b
case1_exception_reduced = rref(case1_augmentedmatrix)
% the system is inconsistent as the last row of the matrix is 0 = 1 which
% is not true


%Case II.2. Generate a 4x3 matrix with a 4x1 constant matrix
x1 = [ 1  4 7 10]';
x2 = [ 2 5 8 11]';
x3 = [3 6 9 12 ]';
x= [7 18 29 40]';

case2_augmentedmatrix = [x1 x2 x3 x]

case2_reduced= rref(case2_augmentedmatrix)


%CASE III.2 
a1 = [ 1 5 9]';
a2 = [ 2 6 10]';
a3 = [ 3 7 11]';
a4 = [4 8 12]';
b = [10 26 41]';

case3_augmentedmatrix = [a1 a2 a3 a4 b]

case3_reduced = rref(case3_augmentedmatrix)
%the system is inconsistent



