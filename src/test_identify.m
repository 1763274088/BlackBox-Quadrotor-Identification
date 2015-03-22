clear all, clc, close all;

[in,out,mod] = loaddata();

opt = identifyOptions;
opt.inputDelayAuto = false;
opt.cost ='fit';
opt.modelType = 'oe';
opt.maxOrders = [ 5 5 5 5 3];

disp('OE model');
modelOE = identify(in.prbs1,out.prbs1,opt);

opt.modelType ='arx';
disp('ARX model');
modelARX = identify(in.prbs1,out.prbs1,opt);


modelOE, modelARX