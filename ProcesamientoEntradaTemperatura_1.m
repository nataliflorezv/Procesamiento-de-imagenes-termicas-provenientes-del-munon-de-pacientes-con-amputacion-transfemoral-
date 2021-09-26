close all
clc
load('C:\Users\USUARIO\Desktop\Manuela\PIS II\DatabaseTemperature.mat')

%% Load Thermal Images
% IMAGE(1).view = imread('C:\Users\andre\Documents\MATLAB\ThermalPhoto\A0Frontal.png'); %Posterior
% IMAGE(2).view = imread('C:\Users\andre\Documents\MATLAB\ThermalPhoto\A0Lateral.png'); %Anterior
% IMAGE(3).view = imread('C:\Users\andre\Documents\MATLAB\ThermalPhoto\A0Medial.png');     %Medial

i =2
IMAGE(i).view = imread('THERMAL_IMAGES\A0Posterior.png');   %Latera

% % Calculate room temperature
% roomtemp = tempAmbiente(IMAGE(i).view);
% % RoomTempA=mean(roomtemp);
% DataBaseTemp.RoomTempA0=roomtemp;
% % close all

%% Cutting photos
[IntactLimb,ResidualLimb] = cutlimbs(IMAGE(i).view);
% figure, imshow(ResidualLimb,[])%para visualizar lo recortado

% figure, imhist(ResidualLimb);
ResidualLimb_eq=histeq(ResidualLimb);
figure,imshow(ResidualLimb_eq);
% % figure, imhist(ResidualLimb_eq);

% Aplicación de otsu
T_eq=otsu(ResidualLimb_eq)
figure,imshow(T_eq)

referencia = ref(T_eq)
DataBaseTemp(i).ReferenciaP3=referencia;

% promedio = area(T_eq,referencia);


 %% Total Temperature (intact and residul limbs)
% [Temp,DataBaseTemp(i).IntaCutA1,DataBaseTemp(i).PosteriorResCutA1] = tempsmean(IntactLimb,ResidualLimb,IMAGE(i).view,2);
%     pause
%     close all
%     DataBaseTemp(i).IntactLimb=IntactLimb;
      DataBaseTemp(i).ResidualLimb_eqN=T_eq;
%     DataBaseTemp(i).promedio=promedio;
      clear IntactLimb ResidualLimb ResidualLimb_eq   
% end  


save('C:\Users\USUARIO\Desktop\Manuela\PIS II\DatabaseTemperature.mat','DataBaseTemp')

