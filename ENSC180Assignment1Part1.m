

%Q1.1 Creating and printing the miles to feet array
miles = (0:100/14:100)';
feets = zeros(15, 1);
k = 1;
for ii = 1:15
    feets(k) = miles(k)*1609*3.28/3600;
    k = k + 1;
end
miles_to_feet = [miles feets];
fprintf('%6.2f %6.2f\n', miles_to_feet')

%Q1.2 Writing the miles to feet array into a binary file in a double format
fileID = fopen('miles_to_feet.bin', 'w');
fwrite(fileID, miles_to_feet, 'double');
fclose(fileID);

%Q1.3 Opening the binary file and reading the data, then displaying it
fileID = fopen('miles_to_feet.bin', 'r');
read_data = fread(fileID,[15,2], 'double');
fclose(fileID);

%1.4 Displaying the binary file information
s = dir('miles_to_feet.bin');

%the file has a 15 by 2 array containing a total of 30 numbers 
% because we used the precision type double, each number uses 8 bytes
% therefor the file size is 30 x 8 =240 bytes
