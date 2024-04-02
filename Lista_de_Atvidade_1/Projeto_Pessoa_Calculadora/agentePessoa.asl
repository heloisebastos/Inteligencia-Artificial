// Agent agentePessoa in project Projeto_Pessoa_Calculadora.mas2j

!calcular(7,4).

/* Plans */
+!calcular(X,Y)<- 
	.send(agenteCalculadora,achieve,valor(X,Y)).
	
	+valor(Return) <- 
		.print("resultado = ",Return).



	
	

