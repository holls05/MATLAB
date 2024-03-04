%Question 1:
function array = lab4_1(X)
   
   array = char([]); 

   %2:
    X(2:2:end) = upper(X(2:2:end)); %at the even index of a string, converts to  upper case

   %1:
    for i = 1:length(X)
        if isletter(X(i)) % deletes non english letters inputted
           array = [array X(i)]; %to not change odd indexed character

        end
    end
end


