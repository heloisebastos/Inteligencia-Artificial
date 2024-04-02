// Agent agenteCalculadora in project Projeto_Pessoa_Calculadora.mas2j



/* Initial beliefs and rules */

+!operacao(X,Y)<-
	Return = X*Y;
	.send(agentePessoa,tell,operacao(Return)).
