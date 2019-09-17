load diff_man.txt
m=diff_man;
n=length(m);
x=[];
y=[];
prev_level=1;
for i=1:n
    x=[x i-1 i-.5 i-.5 i];
    if(m(i)==1)
        if(prev_level==1)
            y=[y 1 1 -1 -1];
            prev_level=-1;
        else
            y=[y -1 -1 1 1];
            prev_level=1;
        end
    else
        y=[y -prev_level -prev_level prev_level prev_level];
    end
end
plot(x,y),axis([0,n,-2,2])