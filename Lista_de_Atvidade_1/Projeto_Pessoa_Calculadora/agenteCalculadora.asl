// Agent agenteCalculadora in project Projeto_Pessoa_Calculadora.mas2j



/* Initial beliefs and rules */

+!valor(X,Y)<-
	Return = X*Y;
	.send(agentePessoa,tell,valor(Return)).
