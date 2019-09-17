load diff_man.txt
m=diff_man;
n=length(m);
x=[];
y=[];
prev=1;
for i=1:n
    x=[x i-1 i-.5 i-.5 i];
    if(m(i)==1)
        y=[y prev prev -prev -prev];
        prev=prev*(-1);
    else
        y=[y -prev -prev prev prev];
    end
end
plot(x,y),axis([0,n,-2,2])
   