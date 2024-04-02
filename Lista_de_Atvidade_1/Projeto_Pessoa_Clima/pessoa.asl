// Agent pessoa in project Projeto_Pessoa_Clima.mas2j

/* Plans */

!previsao.

+!previsao <-
	//.print("A previsao do tempo eh:");
	.send(clima,askOne,clima(Nome)).
	
+clima(frio) <-
	.print("dormir").
	
+clima(chuva) <-
	.print("dormir e ler um livro").

+clima(sol) <-
	.print("ir pra praia").




