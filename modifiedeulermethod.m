function modifiedeulermethod
syms x y
f=input('Enter the forcing function f(x,y):');
x0=input('Enetr seed xo:');
y0=input('Enter seed yo:');
h=input('Enetr the common difference:');
xlimit=input('Enter the x limit:');
a=x0:h:xlimit;
z(1)=y0;
disp('  x     f(x)')
fprintf('%5.5f %5.5f\n',x0,y0)
for i=2:length(a)
    y=z(i-1)+h*(a(i-1)+h/2+z(i-1)+(h/2*(a(i-1)+z(i-1))));
    z=zeros(length(a),1);
    z(i)=y;
    fprintf('%5.5f %5.5f\n',a(i),z(i))
end
end