function forwarddifference
syms x y z
g=input('enter values at which the function is to evaluated:');
fx=input('enter the function fx:');
k=g';
y=fx([k]);
z=fx([k]);
b=zeros(length(k));
c=length(k)-1;
disp('     x    f(x)     forwarddifference')
for i=1:length(k)
    
    for j=1:c
        y(j)=y(j+1)-y(j);
        b(j,i)=y(j);
    end
    c=c-1;
end
 disp([k  z  b])
end
