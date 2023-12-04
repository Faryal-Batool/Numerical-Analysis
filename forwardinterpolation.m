function forwardinterpolation
syms x y z
g=input('enter values at which the function is to evaluated:');
f=input('enter the evaluated function values:');
q1=input('enter the number at which function value is to be estimated:');
q2=input('enter the number at which function value is to be estimated:');
k=g';
y=f;
z=f';
b=zeros(length(k));
c=length(k)-1;
h=k(2)-k(1);
u1=(q1-k(1))/h;
u2=(q2-k(1))/h;
t=1;
s1=0;
s2=0;
disp('     x      y            forwarddifference')
for i=1:length(k)
    for j=1:c
        y(j)=y(j+1)-y(j);
        b(j,i)=y(j);
    end
    c=c-1;
end
 disp([k z b])

for n=1:length(k)-1
    p1=1;
    p2=1;
    for m=1:t
        p1=p1*(u1-m);
        p2=p2*(u2-m);
    end
    s1=s1+(u1*p1*b(1,n+1))/(factorial(n+1));
    s2=s2+(u2*p2*b(1,n+1))/(factorial(n+1));
    t=t+1;
end
x1=z(1)+u1*b(1)+s1
if q2~=0 
x2=z(1)+u2*b(1)+s2
a=x2-x1;
fprintf('The estimated value of function between q1 and q2 is:%2.5d\n',a)
else
    disp('the polynomial which defines the above data is:')
    simplify(x1)
end
end
