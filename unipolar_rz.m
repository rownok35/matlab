load unipolar_rz.txt
m=unipolar_rz;
n=length(m);
x=[];
y=[];
for i=1:n
    if(m(i)==0)
        x=[x i-1 i];
        y=[y 0 0];
    else
        x=[x i-1 i-.5 i-.5 i];
        y=[y 1 1 0 0];
    end
end
plot(x,y),axis([0,n,-2,2])