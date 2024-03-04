
%Q1.1: Displaying the conversion of miles/hour to feet/sec with 2 decimal
%places
conversion = [(0: 100/14: 100)', (0: 146.667/14: 146.667)'];
 fprintf('%.2f  %.2f\n', conversion(:,:)'); %using fprintf will not return the string to me 

%Q1.2: Writing array into a binary file using double format
 fileID= fopen('assign1.bin', 'w');
 fwrite(fileID, conversion, 'double');
 fclose(fileID);
 
 %Q1.3: Read the array from binary file and displaying the array
fileID= fopen('assign1.bin','r');
my_array = fread(fileID, [15, 2], 'double');
my_array

%Q1.4: 
s= dir('assign1.bin')

%Because this is a 15x2 array, there are a 30 elements in total. 
%Because we used the double format, each double takes up 8 bytes.
% Therefore 30*8 = 240 bytes