// Agent pessoa in project Projeto_Pessoa_Clima.mas2j

/* Plans */

!previsao.

+!previsao <-
	//.print("A previsao do tempo eh:");
	.send(clima,askOne,tempo(Nome)).
	
+tempo(frio) <-
	.print("dormir :)").
	
+tempo(chuva) <-
	.print("dormir e ler um livro").

+tempo(sol) <-
	.print("ir pra praia").




