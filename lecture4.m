
fid = fopen('lab_03.txt', 'rt');
if fid < 0 
    disp('File does not exist');
    return;
end

N = fscanf(fid, '%*s %*s\n numData= %d\n', 1);


