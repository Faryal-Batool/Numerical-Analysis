function [x]= regulafalsimethodme(F,a,b,tolf)
Fa=F(a);
Fb=F(b);

if Fa*Fb>0
    disp('Error There is no sign jump between the given interval. Choose another interval')
else
    disp('iterations   a            b           x          Fx') 
   c=1;
    while c~=0
   
  
        x=a-(Fa*(b-a))/(Fb-Fa);
        Fx=F(x);
        fprintf('%3i  %15.5f %10.5f  %10.5f  %10.5f \n',c,a,b,x,Fx)
        
        if abs(Fa)<=tolf
            disp('a is the root of the function')
            break
        end
        if abs(Fb)<=tolf
            disp('b is the root of the function')
            break
        end
         if abs(Fx)<=tolf
            fprintf('x=%i is the root of the function',x)
            break
         end
        if Fa*Fx<0
            b=x;
            Fb=Fx;
        else
            a=x;
            Fa=Fx;
           c=c+1;
        end  
    end
end
            
        
        