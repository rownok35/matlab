load bipolar_pseudo.txt
m=bipolar_pseudo;
n=length(m);
x=[];
y=[];
prev_zero=-1;
for i=1:n
    x=[x i-1 i];
    if(m(i)==1)
        y=[y 0 0];
    else
        y=[y -prev_zero -prev_zero];
        prev_zero=prev_zero*(-1);
    end
end
plot(x,y),axis([0,n,-2,2])