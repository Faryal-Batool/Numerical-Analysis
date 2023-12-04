function Taylorseries
syms x y s1 s2 
F=input('Enter the function: ');
a=input('Enter the initial value of x: ');
b=input('Enter the initial value of y: ');
h=input('Enter the common difference: ');
xlim=input('enter the value at which function is to be evaluated: ');
fprintf('\n\n');

count=a:h:xlim;
s1=matlabFunction(diff(F(x,y),x));
s2=matlabFunction(diff(F(x,y),y));
for i=1:length(count)-1
    firstderivative=F(count(i),b(i));
    secondderivativex=s1(count(i));
    secondderivativey=s2(b(i));
    b(i+1)=b(i)+h*firstderivative+(h^2/factorial(2))*(secondderivativex+(secondderivativey*firstderivative));
end

disp('       x       y')
disp([count' b'])
end
    


