%Q1
img_Nebula=imread('ngc6543a.jpg');
image(img_Nebula)

%Q2
[R, C, col] = size(img_Nebula)
pixel_counter = 0;
img_Nebula(1:8, 1:8,1:3)
tic
for row = 1:R 
    for column = 1:C 
        if img_Nebula(row,column,1)==0 && img_Nebula(row, column, 2)==0 && img_Nebula(row, column, 3)==0
            pixel_counter = pixel_counter+1
        end
    end
end
toc
"# of black pixels using loop:" 
disp(pixel_counter)

%Q3
tic
"# of black pixels using sum"
sum(img_Nebula(:,:,1)==0 & img_Nebula(:,:, 2)==0 & img_Nebula(:,:,3)==0,"all")
toc

%Q4

%[maxValue, entries_greater_128, newArray] = lab03_function(X);
%lab03_function(X)



%Q5
arrayR = img_Nebula(:,:,1)
arrayG = img_Nebula(:,:,2)
arrayB = img_Nebula(:,:,3)
[maxValue_R, entriesAbove128_R, newArray_R] = lab03_function(arrayR)
[maxValue_G, entriesAbove128_G, newArray_G] = lab03_function(arrayG)
[maxValue_B, entriesAbove128_B, newArray_B] = lab03_function(arrayB)

disp(['Maximum values of R:', num2str(maxValue_R)])
disp(['Maximum values of G:', num2str(maxValue_G)])
disp(['Maximum values of B:', num2str(maxValue_G)])
disp(['Count > R:', num2str(entriesAbove128_R)])
disp(['Count > G:', num2str(entriesAbove128_G)])
disp(['Count > B:', num2str(entriesAbove128_B)])

%Q6

 A = cat(3, newArray_R, newArray_G, newArray_B);
fig = figure;
ngc6543a_new = image(A);
filename = 'C:\Users\lehol\OneDrive\Documents\MATLAB;';
saveas(fig,filename, 'ngc6543a_new.jpg')




%Q7
figure;
t = tiledlayout('flow');
nexttile
axis off;
nexttile;
image(ngc6543a-new);
axis off;
print('ngc6543a-two-images.jpg','-djpeg');










