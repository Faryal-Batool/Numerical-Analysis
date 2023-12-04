function interpolationm
n=input('enter order of eq: ');
X=input('enter values of x as a row vector:');
fX=input('enter values of fx as a row vector: ');
x=input('enter value of x at which fx is to be determined by interpolation:');
disp('iteration    sum      product')
s=0;
i=1;

while i<=n+1
    p=1;
    j=1;
    while j<=n+1
        if j~=i
            p=p*((x-X(j))/(X(i)-X(j)));
        end
        j=j+1;
    end
    s=s+fX(i)*p;
    fprintf(' %3i %13.5f %10.5f\n',i,s,p)
    i=i+1;
end
fx=s;
fprintf('The value of function at x=%2.5f is fx=%8.5f',x,fx)
fprintf('\n')
end
