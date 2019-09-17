load polar_nrzl.txt
m=polar_nrzl;
n=length(m);
x=[];
y=[];
for i=1:n
    x=[x i-1 i];
    if(m(i)==1)
        y=[y -1 -1];
    else
        y=[y 1 1];
    end
end
plot(x,y),axis([0,n,-2,2])