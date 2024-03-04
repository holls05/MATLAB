function newimg = img_max_pool(img)
% ENSC 180, Assignment 1, Q2
%IMG_MAX_POOL: image max pooling function
%
%   Usage: newimg = img_max_pool(img)
%   Input: 
%       img:    Input 2D image array.
%   Outputs:
%       newimg: Max pooling result of the image.
%   Examples:
%       newimg = img_max_pool(img);

%   Jie Liang, Jan. 2024

if nargin == 0 % how can i make it so that this statement will run
    help img_max_pool
    return;
end

[rows, cols] = size(img)

newimg = zeros(rows / 2, cols / 2)

for i = 1 : rows / 2
    for j = 1 : cols / 2
        blk_rows = 2 * i - 1 : 2 * i
        blk_cols  = 2 * j - 1 : 2 * j
        blk = img(blk_rows, blk_cols)
        newimg(i, j) = max(blk(:))
    end
end

newimg = uint8(newimg)