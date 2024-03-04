function norm_data_study(data)

%Plotting the histogram of the given grades
h = histogram(data)

mean_value = mean(data)
standard_deviation = std(data,1)

%Display 1x3 vector of the probabilities 
distance_1 = 1*standard_deviation;
distance_2 = 2*standard_deviation;
distance_3 = 3*standard_deviation;


distancerange_1 = sum(abs(data-mean_value) <= distance_1);
distancerange_2 = sum(abs(data-mean_value) <= distance_2);
distancerange_3 = sum(abs(data-mean_value) <= distance_3);
number_of_elements = length(data);
prob_std_1 = distancerange_1/number_of_elements;
prob_std_2 = distancerange_2/number_of_elements;
prob_std_3 = distancerange_3/number_of_elements;

probabilities_vector = [prob_std_1, prob_std_2, prob_std_3]

%Calculating the probabilities using normcdf
%normdcf(x, mu, sigma)
mu = 0;
sigma = 1;
nprob1 = normcdf(1,mu, sigma) - normcdf(-1, mu, sigma);
nprob2 = normcdf(2, mu, sigma) - normcdf(-2,mu, sigma);
nprob3 = normcdf(3, mu, sigma) - normcdf(-3, mu, sigma);

normal_probability_vector = [nprob1, nprob2, nprob3]

%Calculating the errors
absolute_error = abs(probabilities_vector - normal_probability_vector)








