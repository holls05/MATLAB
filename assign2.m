%Assignment 2

%1: Combination and Permutation
%Initialize n,k, C(n,k), P(n,k) values to put in table
n_values = [];
k_values = [];
C_values = [];
P_values = [];

for n = 2:5
 for k = 0:n
     %Calculate combinations C(n,k) starts with 2,0 then 2,1 then 2,
        cnk = nchoosek(n,k);
        pnk = factorial(n) / factorial(n - k);
        
        n_values = [n_values; n];
        k_values = [k_values; k];
        C_values = [C_values; cnk];
        P_values = [P_values; pnk];
 end
end
%Display results in a table
T = table(n_values,k_values,C_values,P_values,'VariableNames',["n","k","C(n,k)","P(n,k)"])


