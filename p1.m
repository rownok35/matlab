load mlt_3.txt
m=mlt_3;
n=length(m);
x=[];
y=[];
last_non_zero=-1;
prev_level=0;
for i=1:n
    x=[x i-1 i];
    if(m(i)==0)
        y=[y prev_level prev_level];
    else
        if(prev_level ~=0)
            y=[y 0 0];
            prev_level=0;
        else
            y=[y -last_non_zero -last_non_zero];
            last_non_zero=last_non_zero*(-1);
            prev_level=last_non_zero;
        end
    end
end
plot(x,y),axis([0,n,-2,2])