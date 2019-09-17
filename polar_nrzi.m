load polar_nrzi.txt
m=polar_nrzi;
n=length(m);
x=[];
y=[];
prev_one=1;
for i=1:n
    x=[x i-1 i];
    if(m(i)==0)
        y=[y prev_one prev_one];
    else
        prev_one=prev_one*(-1);
        y=[y prev_one prev_one];
    end
end
plot(x,y),axis([0,n,-2,2])