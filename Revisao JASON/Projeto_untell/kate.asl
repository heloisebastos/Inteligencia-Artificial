// Agent kate in project untell.mas2j


!falarpara.

/* Plans */

+!falarpara : true <- 
	.print("bom dia");
	.send(bob, tell, kate(saldacao)).
	
//kate recebe a crenca
+~kate(saldacao) [source(bob)] <- 
	.print("ok");
	.send(bob, untell, kate(saudacao)).

	
