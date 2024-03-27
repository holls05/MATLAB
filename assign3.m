function assign3(delta)

%1: Read the image
img = imread("barbara.pgm");
imshow('barbara.pgm')
img_double = double(img);

%2:Use dct(eye(8)) to get the 8-point DCT matrix T 
M = 8
T = dct(eye(M));
[R, C] = size(img_double)

%3: all zero matrix size 512x512
store_img = zeros(R,C);

%4:  initialize counter
nonzero_coeffs_counter = 0
for rows = 1:8:R
    for columns = 1:8:C
          %x = T(M,1)     
                    block = img_double(rows:rows+7, columns:columns+7);
            
            % Apply 2D DCT
            dct_coefficients = T * block * T';
            
            % Quantization and reconstruction
            quantized_dct = round(dct_coefficients / delta) * delta;
            
            % Count non-zero reconstructions
            nonzero_coeffs_counter = nonzero_coeffs_counter + nnz(quantized_dct);
            
            % Inverse DCT
            store_img = T' * quantized_dct * T;
            
            % Display block data for the first block
            if rows == 1 && columns == 1
                disp('Original Block:');
                disp(block);
                disp('Original DCT Coefficients:');
                disp(dct_coefficients);
                disp('Reconstructed DCT Coefficients:');
                disp(quantized_dct);
                disp('Reconstructed Block after Inverse DCT:');
                disp(store_img);
            end
            
            % Store reconstructed block
            reconstructed_image(rows:rows+7, columns:columns+7) = store_img;
    end
end

 % Display total number of non-zero coefficients
    disp(['Total number of non-zero coefficients: ' num2str(nonzero_coeffs_counter)]);
    
    % Clean up the reconstructed image
    reconstructed_image(reconstructed_image > 255) = 255;
    reconstructed_image(reconstructed_image < 0) = 0;
    quantized_img = uint8(reconstructed_image);
    
    % Display the quantized image
    figure;
    imshow(quantized_img);
    title('Quantized Image');
    
    % Calculate Mean Squared Error
    mse = sum(sum((img_double - double(quantized_img)).^2)) / (R * C);
    disp(['Mean Squared Error: ' num2str(mse)]);
end

%rng('default');
%x =  randn(M, 1)
%y1 = T*x

%y2 = T*x*T' 
%y1*T'
