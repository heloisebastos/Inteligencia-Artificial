// Agent kate in project ProjetoaskHow.mas2j

/* Initial beliefs and rules */

/* Initial goals */

!falarpara.

/* Plans */

+!falarpara <- 
	.print("Por favor,voce pode me ensinar como ligar a luz?");
	.print("eu estou aprendendo...aguarde");
	
	.send(bob,askHow,"+!luz(ligada)");
	.wait(5000).
	

