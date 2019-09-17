load bipolar_ami.txt
m=bipolar_ami;
n=length(m);
x=[];
y=[];
prev_one=-1;
for i=1:n
    x=[x i-1 i];
    if(m(i)==0)
        y=[y 0 0];
    else
        y=[y -prev_one -prev_one];
        prev_one=prev_one*(-1);
    end
end
plot(x,y),axis([0,n,-2,2])
