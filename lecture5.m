t = tiledlayout(2,1);
x = linspace(0,10);
y1 = sin(x);
y2 = sin(5 * x);
nexttile;
plot(x, y1);
title('sin(x)');
nexttile;
plot(x, y2);
title('sin(5x)');