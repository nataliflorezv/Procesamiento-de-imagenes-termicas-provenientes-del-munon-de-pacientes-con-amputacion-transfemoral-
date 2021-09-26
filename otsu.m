 function img = otsu(I)

% Aplicación de otsu

level=graythresh(I);
img = im2double(I);
[f,c] = size(img);
for j=1:f;
    for h=1:c;
        if img(j,h)<=level;
            img(j,h)=0;
        end
    end
end
img= im2uint16(img)

end
