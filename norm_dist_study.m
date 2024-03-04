% Load and Play the Audio Signal

load handel.mat
sound(y, Fs);

% Plot the Entire Audio Signal
figure;
plot(y);


% Plot a Small Segment of the Audio Signal
figure;
plot(y(4000:4300));

% Call the norm_dist_study() Function

