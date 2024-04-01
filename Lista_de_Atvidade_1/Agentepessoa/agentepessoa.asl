// Agent agentepessoa in project Agentepessoa.mas2j

/*4) Crie um agente pessoa, adicione uma crença qualquer e utilize essa crença
para ativar um plano./objetivo, imprima uma mensagem que o plano foi ativado.*/
 
/*Planos ativados quando o agente adiciona 
ou remove uma crença da sua base de crenças */

/* Initial goals */

!viajar.

/* Plans */

+!viajar : true <- 	.print("vamo viajar ?");
	+passagem(aviao).
	
+passagem(aviao) <- .print("bora to pronta").

