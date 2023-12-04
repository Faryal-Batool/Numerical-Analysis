function eulermethod
syms x y
f=input('Enter the forcing function f(x,y):');
x0=input('Enetr seed xo:');
y0=input('Enter seed yo:');
h=input('Enetr the common difference:');
xlimit=input('Enter the x limit:');
a=x0:h:xlimit;
z=y0;
disp('  x        f(x)')
fprintf('%5.5f %10.5f\n',x0,y0)
for i=2:length(a)
    y=z+h*(a(i-1)+z);
    z=y;
    fprintf('%5.5f %10.5f\n',a(i),z)
end
end