function [root, iter] = testca(f, a, b, tol)
root = 0; iter = 0;
if f(a) * f(b) > 0
 fprintf('Error: Initial points have same sign. \n');
 return;
end

while ( abs(f(a)) >= tol && abs(f(b)) >= tol)
 iter = iter + 1;
 c = (a + b) / 2;
 fprintf('No. %d: c=%f, f(c)=%f\n', iter, c, f(c));
 if ( abs(f(c)) < tol)
 break;
 elseif ( f(a) * f(c) < 0)
 b = c;
 else
 a = c;
 end
end
root=c;