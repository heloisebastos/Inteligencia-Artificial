// Agent agente2 in project quest_03_HeloiseBastos.mas2j

// Agent agent2 in project multiAgentes.mas2j

/*o agent2 pede sorvete para o agent1 e uma colher para o agent3*/

!pedir.


+!pedir : true <- 
	.send(agente, askAll, nome(Nome)).

//pede para o agente1
+nome(agente1):nome(X) & (X == agente1)<-
	.print("Oi, Agente1. Pegar um sorvete para mim, por favor");
	.send(agente1, achieve, pegar(ok)).
//recebe do agente1
+soverte(tomar)<-
	.send(agente1, unachieve, pegar(ok)).
	
//pede para o agente3
+nome(agente3):nome(X) & (X == agente3)<-
	.print("Oi, Agente3. Pegar uma colher para mim, por favor");
	.send(agente3, achieve, colher(ok)).
	
//recebe do agente3
+pegar2(tomarSorvete)<-
	.send(agente3, unachieve, colher(ok)).

//envia para agente1
+!abrir(ok)<-
	.print("Porta aberta, agente1");
	.send(agente1, tell, porta(aberta)).

//envia para agente3
+!agua(ok)<-
	.print("Aqui sua garrafinha de agua, agente3");
	.send(agente3, tell, garrafa(pegarAgua)).
	

