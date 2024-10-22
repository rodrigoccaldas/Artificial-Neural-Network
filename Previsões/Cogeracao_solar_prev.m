% Solve an Input-Output Fitting problem with a Neural Network
% Script generated by Neural Fitting app
% Created 10-Oct-2019 08:36:38
%
% This script assumes these variables are defined:
%
%   Cogeracao_solar - input data.
%   Cogera__o_Solar_D_ - target data.
Cogeracao_solar=[Cogera__o_Solar_D_1__1 Irradi_ncia_D_1__1];  %9.4800
% Cogera__o_Solar_D_



x = Cogeracao_solar';
t = Cogera__o_Solar_D_';

% Choose a Training Function
% For a list of all training functions type: help nntrain
% 'trainlm' is usually fastest.
% 'trainbr' takes longer but may be better for challenging problems.
% 'trainscg' uses less memory. Suitable in low memory situations.
trainFcn = 'trainlm';  % Levenberg-Marquardt backpropagation.

% Create a Fitting Network
hiddenLayerSize = 5;
netsolar = fitnet(hiddenLayerSize,trainFcn);

% Setup Division of Data for Training, Validation, Testing
netsolar.divideParam.trainRatio = 70/100;
netsolar.divideParam.valRatio = 15/100;
netsolar.divideParam.testRatio = 15/100;

% Train the Network
[netsolar,tr] = train(netsolar,x,t);

% Test the Network
y = netsolar(x);
e = gsubtract(t,y);
performance = perform(netsolar,t,y)

% View the Network
view(netsolar)

% Plots
% Uncomment these lines to enable various plots.
%figure, plotperform(tr)
%figure, plottrainstate(tr)
%figure, ploterrhist(e)
%figure, plotregression(t,y)
%figure, plotfit(net,x,t)

   
%calculo dos erros de previs?o%
k=11686; %espa?o temporal de previs?o
forecast= output;
Xreal= Cogera__o_Solar_D_1_;
actual= Xreal';

%%MAPEEEE%
lambdabar1=(1/k)*sum(forecast);
erro1=actual-forecast; %diferen?a entre real e previsto
erroabs1=abs(erro1);
PE1=(erroabs1/lambdabar1)*100;
MAPE1=sum(PE1)/k;



%CALCULO VARIAN?IA ERRO
quoc1=abs(actual-forecast)/lambdabar1;
errosemi=(1/k)*(sum(quoc1));
   
sigmaini=sum((quoc1-errosemi).^2);
 
sigma1=((1/k)*(sigmaini));

%grafico
figure;
plot(Xreal,'blue','LineWidth',1);plot(output,'red','LineWidth',0.3);
hold on

