% This is a Matlab code to determine the steady-state distribution for the cars
% in Markov process in Problem A16 (Practice Problems of Section 6.3) 
% see page 378 of text book


%x0 stands for the states of system at time t=0 (it can be chosen in a diffrent way)
x0=[0.1;0.6;0.3];
%x0 = [0; 0.5; 0.5];

%P is the transition matrix for the system, here P is a 3x3 matrix 
P=[0.8 0.3 0.3;
   0.1 0.6 0.1;
   0.1 0.1 0.6];
[V,D] = eig(P)
 lambda1 = rref(P-1*eye(3))
 lambda2 = rref(P-0.5*eye(3))
 lambda3 = rref(P-0.5*eye(3))


v1=[];
v2=[];
v3=[];

v1=[v1 x0(1)] %accessing column 1 row 1 of x0
v2=[v2 x0(2)]
v3=[v3 x0(3)]
for i=1:500
    x1=(P^i)*x0; % Finding the i-th state vector is computed 
    if (x1-P*x1)<1e-15 
        disp('Steady state found')
        break;
    end
v1=[v1 x1(1)];
v2=[v2 x1(2)];
v3=[v3 x1(3)];
end

hold on 
plot(v1,'g+-')
plot(v2,'ro--')
plot(v3,'b*')
legend('Airport','Train station','City center')