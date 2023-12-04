function NewtonCotesrule
syms x y fx
N=input('Enter the Value of N for which quadrature formulae is to be obtained:');
x=input('Enter the points at which function is to evaluated:');
e=input('Enter 0 if you have evaluated points or else enter 1:');
fx=input('Enter the function or the evaluated points:');
if e==1
    for i=1:length(x)
    y(i)=fx(x(i));
    end
else
    y=fx;
end
n=length(x)-1;
h=(x(length(x))-x(1))/n;
s=0;
s1=0;
%code for trapezoidal rule
if N==1
    fprintf('\n')
    disp('You have selected trapezoidal rule to evaluate the difinte integral')
for i=1:length(x)-2
    g=2*y(i+1);
    s=s+g;
end
k=y(1)+y(length(x));
I=double(h/2*(k+s)) %double is used to get ans in decimal points
end
%code for Simpsons 1/3 Rule
if N==2
    fprintf('\n')
    disp('You have selected Simpsons 1/3 Rule to evaluate the definte integral')
    for i=2:length(x)-1
        if rem(i,2)==0
            g=4*y(i);
            s=s+g;
        else
            l=2*y(i);
            s1=s1+l;
        end
    end
    k=y(1)+y(length(x));
    I=double(h/3*(k+s+s1))
end
%code for Simpsons 3/8 Rule
if N==3
    fprintf('\n')
    disp('You have selected Simpsons 3/8 Rule to evaluate the definte integral')
    for i=2:length(x)-1
        if rem(i+2,3)==0
            l=2*y(i);
            s1=s1+l;
        else
             g=3*y(i);
            s=s+g;
        end
    end
         k=y(1)+y(length(x));
    I=double(3*h/8*(k+s+s1))  
end 
if e==0
    disp('The integral is calculated with the help of evaluated points')
else
    disp('From ')
Definiteintegral=integral(fx,x(1),x(length(x)))
end
end

    
    