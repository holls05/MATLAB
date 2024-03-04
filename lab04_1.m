%Question 1:
function array = lab04_1(inputString)
   
   array = char([]);

   %2:
    inputString(2:2:end) = upper(inputString(2:2:end));

   %2:
    for i = 1:length(inputString)
        if isletter(inputString(i))
            
            array = [array inputString(i)]; %to not change odd indexed character

        end
    end
end


