function heunsmethod
syms x y
f=input('Enter the forcing function f(x,y):');
x0=input('Enetr seed xo:');
y0=input('Enter seed yo:');
h=input('Enetr the common difference:');
xlimit=input('Enter the x limit:');
a=x0:h:xlimit;
s=y0;
disp(' iteration     x           z      f(x)')
fprintf('%3d %15.5f %20.5f\n',1,x0,y0)
z=zeros(length(a)-1,1);
for i=2:length(a)
    z(i)=s+h*(a(i-1)+s);
    y=s+h/2*((a(i-1)+s)+(a(i)+z(i)));
    s=y;
    fprintf('%3d %15.5f %12.5f %5.5f\n',i,a(i),z(i),y)
end
end