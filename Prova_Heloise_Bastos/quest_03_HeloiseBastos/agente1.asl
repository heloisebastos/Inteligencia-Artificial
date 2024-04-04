// Agent agente1 in project quest_03_HeloiseBastos.mas2j

// Agent agent1 in project multiAgentes.mas2j

/*agent1 pede para o agent2 abrir a porta e para o agent3 acender a luz*/

!falar.


+!falar : true <- 
	.send(agente, askAll, nome(Nome)).
	
//pedir aos agentes
+nome(agente2):nome(X) & (X == agente2)<-
	.print("Oi, Agente2. Abra a porta, por favor");
	.send(agente2, achieve, abrir(ok)).
+nome(agente3):nome(X) & (X == agente3)<-
	.print("Oi, agente3. Acenda a luz, por favor");
	.send(agente3,achieve, ligar(ok)).

//recebendo
+porta(aberta)<-
	.send(agente2, unachieve, abrir(ok)).
+luz(ligada)<-
	.send(agente3,unachieve, ligar(ok)).

//enviando o que foi pedido pelo agente2
+!pegar(ok)<-
	.print("Aqui seu sorvete, agente2");
	.send(agente2, tell, sorvete(tomar)).
	
//enviando o que foi pedido pelo agente3
+!salada(ok)<-
	.print("Aqui sua salada de frutas, agente3");
	.send(agente3, tell, pegarSalada(fruta)).

