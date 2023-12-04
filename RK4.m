function RK4
syms x y
f=input('Enter the function: ');
x1=input('Enter the initial value of x: ');
y=input('Enter the initial value of y: ');
h=input('Enter the common difference: ');
xlim=input('enter the value at which function is to be evaluated: ');
fprintf('\n\n');
m=x1:h:xlim;
for i=1:length(m)-1
    K1=h*feval(f,y(i));
    K2=h*feval(f,y(i)+K1/2);
    K3=h*feval(f,y(i)+K2/2);
    K4=h*feval(f,y(i)+K3);
    K=1/6*(K1+2*(K2+K3)+K4);
    y(i+1)=y(i)+K;
end
disp('       x       y')
disp([m' y'])

end
