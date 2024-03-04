function[pk] = bino_pk(n_bermoulli_trials, p)

pk = zeros(1, n_bermoulli_trials + 1);
for k = 0:n_bermoulli_trials
    pk(k+1) = nchoosek(n_bermoulli_trials,k)*(p^k)*(1-p)^(n_bermoulli_trials-k);
end
end



