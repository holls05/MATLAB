%Q2.1 Creating the max pooling function
function [pooled_array] = max_pooling(img_array)

[R, C] = size(img_array)

for row = 1:2:R %for each row, increments by 2 until 512/ or the end of that row
    for column = 1:2:C
        new_array = img_array(row:row+1, column:column+1)
        maxvalue_extract = max(max(new_array))
        new_row = ceil(row/2)
        new_column = ceil(column/2)
        pooled_array(new_row, new_column) = maxvalue_extract
    end
end

pooled_array = uint8(pooled_array)

end
