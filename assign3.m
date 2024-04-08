function assign3(delta)

%1: Read the image
img = imread("barbara.pgm");
imshow('barbara.pgm')
img_double = double(img);

%2:Use dct(eye(8)) to get the 8-point DCT matrix T 
M = 8;
T = dct(eye(M));
[R, C] = size(img_double);

%3: all zero matrix size 512x512
store_img = zeros(R,C);

%4:  initialize counter
nonzero_coeffs_counter = 0;

%5:
for rows = 1:8:R
    for columns = 1:8:C
            X = img_double(rows:rows+7, columns:columns+7);

            % a. Apply 2D DCT. calculate DCT coeffiecients using eq 1
             y = T * X * T';
            
            % b. Quantization and reconstruction using eq 3
            yrec = round(y/delta)*delta;

            % c. Count non-zero reconstructions
            nonzero_coeffs_counter = nonzero_coeffs_counter + nnz(yrec);

            % d. Inverse DCT using eq2
            store_img = T' * yrec * T;
            
            % Display block data for the first block
            if rows == 1 && columns == 1
                X
                y
                yrec
                store_img
            end
            
            reconstructed_image(rows:rows+7, columns:columns+7) = store_img;
    end
end

 % 6: Display total number of non-zero coefficients
   nonzero_coeffs_counter

    % 7: Clean up the reconstructed image
    reconstructed_image = round(reconstructed_image);
    reconstructed_image(reconstructed_image > 255) = 255;
    reconstructed_image(reconstructed_image < 0) = 0;

        %9 : convert reconstructed image to 8-bit 
    reconstructed_image_convert = uint8(reconstructed_image);

          % Display the reconstructed image
    figure;
    imshow(reconstructed_image_convert);
    title('Reconstructed Image');
    

    
    % Calculate Mean Squared Error
    mse = sum(sum((img_double - reconstructed_image).^2)) / (R * C);
    mse
        
end

