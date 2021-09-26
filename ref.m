function [referencia] = ref(T_eq) 
[f,c] = size(T_eq)
m=1
ref=[]
for j=1:f
    for h=1:c
        if T_eq(j,h)~= 0;
            ref(m)= T_eq(j,h);
            m=m+1;
        end
    end
end
referencia=mean(ref)