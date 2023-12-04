clear all
F=@(x)(x^3+4*x^2-10);
a=1;
b=2;

imax=30;
tolf=10^-3;
Fa=F(a);
Fb=F(b);

if Fa*Fb>0
    disp('There is no sign jump')
else
    disp('iterations   a            b           x          Fx')
    
    for i=1:imax
        x=(a+b)/2;
        Fx=F(x);
        
        fprintf('%3i  %15.5f %10.5f  %10.5f  %10.5f \n',i,a,b,x,Fx)
   
        if abs(Fa)<=tolf
          disp('The root is a')
          break
           end
if abs(Fb)<=tolf;
        disp('The root is b')
break
end
  if abs(Fx)<=tolf
             fprintf('x=%i is the root',x)
  break
  end
  
  if i==imax
      disp('There is no root')
  break
  end
  
  if Fa*Fx<0
      b=x;
  else
      a=x;
  end
    end
end
        
    
        