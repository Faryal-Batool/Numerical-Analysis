syms x y
F=@(x,y)(x^3+y^2+x-0.715);
G=@(x,y)(x^2+y^3-y-0.523);
a=1;
b=0;
f=F(a,b);
g=G(a,b);
fxx=matlabFunction(diff(F(x,y),x));
fx=fxx(a);
fyy=matlabFunction(diff(F(x,y),y));
fy=fyy(b);
gxx=matlabFunction(diff(G(x,y),x));
gx=gxx(a);
gyy=matlabFunction(diff(G(x,y),y));
gy=gyy(b);
N=10;
tolf=0.001;

if f<=0.001 && g<=0.001
    fprintf('f=%i is the root of the function F and g=%i is the root of function G',f,g)
    else
        disp('iterations      Xn         Yn          F''(Xn)      F''(Yn)     G''(Xn)     G''(Yn) ')
        for i=0:N
            xn=a-((f*gy-g*fy)/(fx*gy-fy*gx));
            yn=b-((g*fx-f*gx)/(fx*gy-fy*gx));
            fn=F(xn,yn);
            gn=G(xn,yn);
            
            fprintf('%3i     %15.5f %10.5f  %10.5f  %10.5f %10.5f %10.5f\n',i,a,b,fx,fy,gx,gy)
             if abs(xn-a)>=tolf  && abs(yn-b)>=tolf && i==N
             fprintf('Root not obtained in N=%i iterations',N)
              break 
             end 
             
             if abs(xn-a)<=tolf  && abs(yn-b)<=tolf
        fprintf('iteration   %3i \n    root of function F= %5.5f and root of function G= %5.5f\n',i,xn,yn)
        break
             else
                 a=xn;
                 b=yn;
                 f=fn;
                 g=gn;
                 fx=fxx(xn);
                 fy=fyy(yn);
                 gx=gxx(xn);
                 gy=gyy(yn);
                 
                 
             end
        end
    end
                 
            
            
            
            
            
            
        