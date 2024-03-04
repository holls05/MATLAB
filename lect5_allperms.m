function allperms= lect5_allperms(input, k)
disp('Find all k-combinations:');
kcombs= nchoosek(input, k)
%Permute each combination
allperms= [];
for r = 1 : size(kcombs, 1)
allperms= [allperms; perms(kcombs(r, :))];
end
disp('All k-permutations:');
allperms