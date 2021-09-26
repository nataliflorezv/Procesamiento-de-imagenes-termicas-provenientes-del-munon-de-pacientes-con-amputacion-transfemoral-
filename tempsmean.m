function [Temp,IntaCut,ResCut] = tempsmean(IntactLimb,ResidualLimb,alignment,limbquantity);

if(limbquantity==1)
    [n2,m2]=size(ResidualLimb);
    Vali2=1;
    for(i=1:n2)
        for(j=1:m2)
            Rec12(i,j)=double(alignment(i,j))*double(ResidualLimb(i,j)); %Residual Limb
            if(Rec12(i,j)~=0)
                Val2(Vali2)=Rec12(i,j);
                Vali2=Vali2+1;
            end
        end
    end
    IntaCut=0;
    TempTotalResidual=Val2.*(140/65536)-20;
    Temp=[mean(TempTotalResidual) std(TempTotalResidual) mean(alignment(find(alignment<=(min(min(alignment))+min(min(alignment))*0.01))))*(140/65536)-20];

    [rowResidu,colResidu]=find(Rec12>0);
    ResCut=(Rec12(min(rowResidu):max(rowResidu),min(colResidu):max(colResidu)));

%     figure,
%     subplot(121),imshow(grs2rgb(ResCut,colormap(jet)))

    ResCuta=ResCut.*140/65536-20;
    ResCuta(find(ResCuta<0))=-7;
%     subplot(122),imshow(ResCuta,colormap(hot))
end

if(limbquantity==2)
    [n1,m1]=size(IntactLimb);
    [n2,m2]=size(ResidualLimb);
    Vali1=1;
    Vali2=1;
    for(i=1:n1)
        for(j=1:m1)
            Rec11(i,j)=double(alignment(i,j))*double(IntactLimb(i,j)); %Intact Limb
            if(Rec11(i,j)~=0)
                Val1(Vali1)=Rec11(i,j);
                Vali1=Vali1+1;
            end      
        end
    end
    for(i=1:n2)
        for(j=1:m2)
            Rec12(i,j)=double(alignment(i,j))*double(ResidualLimb(i,j)); %Residual Limb
            if(Rec12(i,j)~=0)
                Val2(Vali2)=Rec12(i,j);
                Vali2=Vali2+1;
            end
        end
    end

    TempTotalIntact=Val1.*(140/65536)-20;
    TempTotalResidual=Val2.*(140/65536)-20;
    Temp=[mean(TempTotalIntact) std(TempTotalIntact)  mean(TempTotalResidual) std(TempTotalResidual) mean(alignment(find(alignment<=(min(min(alignment))+min(min(alignment))*0.01))))*(140/65536)-20];

    [rowIntact,colIntact]=find(Rec11>0);
    [rowResidu,colResidu]=find(Rec12>0);
    IntaCut=(Rec11(min(rowIntact):max(rowIntact),min(colIntact):max(colIntact)));
    ResCut=(Rec12(min(rowResidu):max(rowResidu),min(colResidu):max(colResidu)));

%     figure,
%     subplot(121),imshow(grs2rgb(IntaCut,colormap(jet)))
%     subplot(122),imshow(grs2rgb(ResCut,colormap(jet)))

    figure,
    IntaCuta=IntaCut.*140/65536-20;
    IntaCuta(find(IntaCuta<0))=0;
    ResCuta=ResCut.*140/65536-20;
    ResCuta(find(ResCuta<0))=0;
%     subplot(121),imshow(IntaCuta,colormap(hot))
%     subplot(122),imshow(ResCuta,colormap(hot))
end

