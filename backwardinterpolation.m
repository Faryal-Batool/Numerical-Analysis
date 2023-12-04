function backwardinterpolation
syms x y z
g=input('enter values at which the function is to evaluated:');
fx=input('enter the evaluated function values:');
q1=input('enter the number at which function value is to be estimated:');
q2=input('enter the number at which function value is to be estimated:');
k=g';
y=fx;
z=fx';
b=zeros(length(k));
h=k(2)-k(1);
u1=(q1-k(length(k)))/h;
u2=(q2-k(length(k)))/h;
t=1;
s1=0;
s2=0;
disp('      x     y               backward difference')
d=2;  
for i=1:length(k)
    
    for j=length(k):-1:d
        y(j)=y(j)-y(j-1);
        b(j,i)=y(j);
    end
    d=d+1;
end
 disp([k z b])

 for n=1:length(k)-1
    p1=1;
    p2=1;
    for m=1:t
        p1=p1*(u1+m);
        p2=p2*(u2+m);
    end
    s1=s1+(u1*p1*b(length(z),n+1))/(factorial(n+1));
    s2=s2+(u2*p2*b(length(z),n+1))/(factorial(n+1));
    t=t+1;
end
x1=z(length(z))+u1*b(length(z))+s1

if q2~=0
x2=z(length(z))+u2*b(6)+s2
a=x2-x1
end
if x1==x
    disp('the polynomial which defines the above data is:')
    simplify(x1)
end
    
end
