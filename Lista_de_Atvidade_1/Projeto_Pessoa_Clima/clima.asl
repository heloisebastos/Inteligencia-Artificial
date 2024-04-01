// Agent clima in project Projeto_Pessoa_Clima.mas2j

/* Plans */

!previsao.

+!previsao : true <- 
	.print("Previsao : sol");
	.send(pessoa,achieve,clima(sol));
	
	.print("Previsao : chuva");
	.send(pessoa,achieve,clima(chuva));
	
	.print("Previsao : neve");
	.send(pessoa,achieve,clima(neve)).
	

