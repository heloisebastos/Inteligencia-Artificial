// Agent agent3 in project multiAgentes.mas2j
/*o agente3 pede uma salada de frutas para o agente1 e uma agua para o agente2*/

!pedido.

+!pedido: true <- 
	.send(agente, askAll, nome(Nome)).

//pedido para os agentes
+nome(agente1):nome(X) & (X == agente1)<-
	.print("Oi, Agente1. Pega a salada de frutas para mim, por favor");
	.send(agente1, achieve, salada(ok)).
+nome(agente2):nome(X) & (X == agente2)<-
	.print("Oi, agente2. Pega a garrafa de agua para mim, por favor");
	.send(agente2,achieve, agua(ok)).

//recebendo do agente1
+pegarSalada(fruta)<-
	.send(agente1, unachieve, salada(ok)).

//recebendo do agente2	
+garrafa(pegarAgua)<-
	.send(agente2,unachieve, agua(ok)).
	
//envia o que foi pedido pelo agente1
+!ligar(ok)<-
	.print("Luz ligada, agente1");
	.send(agente1, tell, luz(ligada)).

//envia o que foi pedido pelo agente2	
+!colher(ok)<-
	.print("Aqui a colher, agente2");
	.send(agente2, tell, pegar2(tomarSorvete)).

