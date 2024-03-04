function modifiedString = lab04function(userInputs)
    % Make a copy of the input string to avoid modifying the original
    modifiedString = userInputs;

    % Convert even-indexed letters to upper-case
    modifiedString(2:2:end) = upper(modifiedString(2:2:end));

    % Initialize an empty string to store the result
    result = '';

    % Iterate through each character in the modified string
    for i = 1:length(modifiedString)
        % Check if the character is an English letter
        if isletter(modifiedString(i))
            % Task 3: Do not change odd-indexed letters
             result = [result modifiedString(i)];
        end
    end

    % Assign the result to the output variable
    modifiedString = result;
end
