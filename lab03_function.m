
function [maxValue, entries_greater_128, newArray] = lab03_function(X)


    % a. Find the maximal value of all entries of the input array.

    maxValue = max(X(:))
    
    % b. Count the number of entries with values > 128.
    counter_entries = 0
    counter_entries = sum(sum (X > 128))
    
    % c. For each entry of the input array, if its value is > 128, change its value to 255. Otherwise change its value to 0. Assign the result to a new array.
        X(X > 128) = 255
    X(X <= 128) = 0
  newArray = X
  entries_greater_128 = counter_entries

end

