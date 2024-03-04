% 1:
fid = fopen('question2.txt', 'w');

fprintf(fid, '%-12s%-12s%-12s\n', 'ID', 'Number', 'Grade');
data = [
    1 301011234 100;
    2 301022468 85;
    3 201037890 93;
    4 123456789 67;
    5 987654321 34
];


for row = 1:size(data, 1)
    fprintf(fid, '%-12d%-12d%-12d\n', data(row, 1), data(row, 2), data(row, 3)); %loop 5 times to get 5 rows, each with 3 columns
end

fclose(fid);


% 2:
fid = fopen('question2.txt', 'rt');

first_line = fgetl(fid);
disp(first_line);

other_data = fscanf(fid, '%d',[3, 5])';
fclose(fid);
other_data

% 3: calculating the average grade
average_grade = mean(data(1:5,3));
fprintf('Average Grade: %.2f\n', average_grade);
