function [porcentaje] = area(T_eq,referencia)

maximo = max(max(T_eq))
areaTotal= 0;
areaC = 0;
[f,c] = size(T_eq)
for j=1:f
    for h=1:c
        areaTotal = areaTotal+1;
        if T_eq(j,h)>=referencia
            areaC = areaC+1;
        end
    end
end
porcentaje = (areaC/areaTotal)*100
end
