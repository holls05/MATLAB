function lab06(n_bermoulli_trials,number_of_experiments, p)
rng('default');
%N = 10 % the number of Bernoulli trials 
%M = 100 % number of experiment

A =(rand(n_bermoulli_trials, number_of_experiments )< p);



%step 2
sumofcolumns = sum(A,1);
%sum_3 = sum(sumofcolumns)

   %edges = -0.5:1:n_bermoulli_trials+0.5;
edges = [-0.5:n_bermoulli_trials+0.5];
 
h = histogram(sumofcolumns, edges)


title('Simulation of Bernoulli Trials')
xlabel('number of experiments')
ylabel('number of successes')



[pk] = bino_pk(n_bermoulli_trials, p);
bin_values = h.Values / number_of_experiments;
error = abs(bin_values - pk) 

avg_error = mean(error);
disp('error')
disp(avg_error)

figure;
bar(edges(1:end-1),[bin_values; pk])
title('Estimated Probabilities vs Theoretical Probabilities')
xlabel('number of successes')
ylabel('probability values')
%set(gca, 'XTickLabel')
