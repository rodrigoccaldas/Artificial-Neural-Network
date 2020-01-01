% preco d-6  hora  consumo D-6
% target preco d
% Xreal= preco D+1  Pre_o_D_1_
%preco_test=[Pre_o_D_6_ Hora Consumo_D_6_];
%pre?o d Pre_o_D__1

%
%   exportacao d-1   (consumo d-1 - prod_total_d_1)  
% exportacao_test =[
%
% target 
%  exportacao d  exporta__o_D_
% exportacao_test_1 = [Exporta__o_D_1_ Consumo_D_1__1-prod_total_d_1];

exportacao_aval_1=[Exporta__o_D_1__2 Consumo_D_1__3-prod_total_d_aval]; %108.7833

x = exportacao_aval_1';
%t = Pre_o_D__1';


results_rodrigo = sim(net_exp_teste, x);
