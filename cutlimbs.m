function [IntactLimb,ResidualLimb] = cutlimbs(alignment)

figure, imshow(alignment,[])
title('\color{blue}Please, select residual limb area')
xlabel('When you finish, please double click')
h2 = imcrop;
ResidualLimb = h2;
title('\color{blue}Please, select intact limb area')
h1 = imcrop;
IntactLimb = h1;

   
end


