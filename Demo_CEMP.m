
model_out = Rotation_Graph_Generation(200,0.5,0.3,0,'uniform');

Ind = model_out.Ind;
RijMat = model_out.RijMat;
ErrVec = model_out.ErrVec;
R_orig = model_out.R_orig;

% set CEMP defult parameters
CEMP_parameters.max_iter = 6;
CEMP_parameters.reweighting_parameters = 2.^((1:6)-1);
CEMP_parameters.nsample = 50;

% run CEMP
SVec = CEMP_Rotation(Ind,RijMat,CEMP_parameters);

%visualize sij^* and sij,t
 plot(ErrVec,SVec,'b.');
title('Scatter Plot of s_{ij}^* v.s. s_{ij,T}')
xlabel('s_{ij}^*') 
ylabel('s_{ij,T}') 
