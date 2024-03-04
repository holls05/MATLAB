% Load and Play the Audio Signal
function norm_dist_study(y)
load handel.mat
sound(y, Fs);

% Plot the Entire Audio Signal
figure;
plot(y);
title('Entire Audio Signal');

% Plot a Small Segment of the Audio Signal
figure;
plot(y(4000:4300));
title('Segment of Audio Signal (4000:4300)');

% Call the norm_dist_study() Function

