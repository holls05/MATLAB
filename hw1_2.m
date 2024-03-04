function hw1_2(imgname)
% ENSC 180, Assignment 1, Q2
%HW1_2: image max pooling
%
%   Usage: hw4_2(imgname)
%   Input: 
%       imgname:    Input image name (string).
%   Outputs:
%       No.
%   Examples:
%       hw1_2('barbara.pgm')
%       hw1_2('cameraman.pgm')

%   Jie Liang, Jan. 2024

close all;

if nargin == 0
    help hw1_2 %hw4_2 doesnt exist so it shows hw1_2 instead
    %return; %dont really need the return here but what is its purpose
    %being there?
end

img = imread(imgname)
%figure; %was part of my code but is not needed
imshow(img)
img(1:8, 1:8) % selects the image 1-8 rows and columns

% First layer of max pooling
img1 = img_max_pool(img)
figure
imshow(img1)
img1(1:4, 1:4)
newimgname = [imgname(1 : end - 4), num2str(1), '.pgm']
imwrite(img1, newimgname)

% Second layer of max pooling
img2 = img_max_pool(img1)
figure
imshow(img2)
img2(1:2, 1:2)
newimgname = [imgname(1 : end - 4), num2str(2), '.pgm']
imwrite(img2, newimgname)
