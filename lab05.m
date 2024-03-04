%Lab 5
%Q1.1
n = [5:13]';

%Q1.2
f = factorial(n);

%Q1.3
log_function = log10(f);

%Q1.4
T = table(n, f, log_function);

%Change the three columns to n, n!1 and log10(!n) Display the table content
T = table(n, f, log_function,'VariableNames',["n","n!","log10(!n)"])


%Q1.7
tiledlayout('flow')
nexttile
plot(n, f, 'Linestyle','-.','Color','magenta', 'Marker','*');
xlabel n
ylabel n!
nexttile
plot(n, log_function, 'Linestyle','--','Marker','>','Color','cyan');
xlabel n
ylabel log10(n!)
grid on

