% consumo d-1  carvao d-1   gn d-1 carvao d-6 gn d-6
%Carvao_D_1__1 Carvao_D_6_ Pre_o_D_6_ Pre_o_D_
Cogeracao_solar_aval=[Cogera__o_Solar_D_1__2 Irradi_ncia_D_1__2];

x = Cogeracao_solar_aval';
t = Cogera__o_Solar_D_1__2';


results = sim(netsolar, x);
