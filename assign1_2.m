function [] = assign1_2(X)

%Q2.2a
img= imread(X)
figure
imshow(img)
image_8x8 = double(img(1:8, 1:8))
disp(image_8x8)


%Q2.2b: Calling the max pooling function
downsize_array_1 = max_pooling(img);

%Q2.2c Showing the downsized image. Display pixel values of 4x4 block of
%the image
figure
imshow(downsize_array_1)
image_4x4 = double(downsize_array_1(1:4, 1:4));
disp(image_4x4)



%Q2.2d saving the new downsized image with a '1' postfix
[path, file, ext] = fileparts(X);
new_file_name_1 = [file, '1', ext];
full_file_path_1 = fullfile(path, new_file_name_1);
imwrite(downsize_array_1, full_file_path_1, 'pgm');


%Q2.2.e
downsize_array_2 =  max_pooling(downsize_array_1);
figure
imshow(downsize_array_2)
image_2x2 = double(downsize_array_2(1:2, 1:2));
disp(image_2x2)

[path, file, ext] = fileparts(X);
new_file_name_2 = [file, '2', ext];
full_file_path_2 = fullfile(path, new_file_name_2);
imwrite(downsize_array_2, full_file_path_2, 'pgm');




