% Define the array
array = [3.1 5.8 6.3 2.6 2.1 7.0 5.0 8.2 4.2]

% a) Size of the array
sizeArray = size(array);

% b) Minimum and maximum values
minValue = min(array);
maxValue = max(array);

% c) Mean and median values
meanValue = mean(array);
medianValue = median(array);

% d) Standard deviation
stdDeviation = std(array);

% e) Reorder the array from minimum to maximum value
sortedArray = sort(array);

% Display results
disp(['Size of the array: ', num2str(sizeArray)]);
disp(['Minimum value: ', num2str(minValue)]);
disp(['Maximum value: ', num2str(maxValue)]);
disp(['Mean value: ', num2str(meanValue)]);
disp(['Median value: ', num2str(medianValue)]);
disp(['Standard deviation: ', num2str(stdDeviation)]);
disp(['Sorted array: ', num2str(sortedArray)]);