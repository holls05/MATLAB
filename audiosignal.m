%Question 3:  Probability Distribution of an Audio Signal

load handel.mat
sound(y, Fs);

% Plot the Entire Audio Signal
figure;
plot(y);


% Plot a Small Segment of the Audio Signal
figure;
plot(y(4000:4300));

%Call the function created in Q2
norm_data_study(y)