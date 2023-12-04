function backwarddifference
syms x y z
g=input('enter values at which the function is to evaluated:');
fx=input('enter the function fx:');
k=g';
y=fx(k);
z=fx(k);
b=zeros(length(k));
c=length(k)-1;
disp('     x    f(x)     backward difference')
s=2;
for i=1:length(k)
    
    for j=length(k):-1:s
        y(j)=y(j)-y(j-1);
        b(j,i)=y(j);
    end
    s=s+1;
end
 disp([k  z  b])
end
