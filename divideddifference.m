function divideddifference
syms x y m
x=input('Enter the points at which function is to evaluated:');
e=input('Enter 0 if you have evaluated points or else enter 1:');
a=input('Enter the function or the evaluated points:');
h=input('Enter 1 if you want a polynomial coincident with your function else enter 0:');
%x=[-2 -1 3 5 8 9 14 15];
%y=[-26 -14 34 226 994 1426 5446 6706];
if e==1
    for i=1:length(x)
    y(i)=a(x(i));
    end
else
    y=a;
end
z=y;
l=1;
u=0;
k=length(x)-1;
b=zeros(length(x),length(x)-1);
for j=1:length(x)
    c=j;
    for i=1:k
        y(i)=(y(i+1)-y(i))/(x(i+c)-x(i));
        b(i,j)=y(i);
    end
    k=k-1;
end
% The following code is for calculation of polynomial coincident with function 

r=1;
if h==1
    for i=1:length(x)
        p=1;
        for j=1:l %correct this
        f=(m-x(j));
         p=p.*f;
        end
        if i<length(x)
            t=b(1,r)
        end
      %t=p*b(1,r);
         u=u+p.*t;
        l=l+1;
        r=r+1;
    end
    disp([x'  z'  b])     
    polynomial=z(1)+u
else
   disp([x'  z'  b])  %observe the elements coloumn wise
end 
end

 



