// Agent agentepessoa in project Agentepessoa.mas2j

/*4) Crie um agente pessoa, adicione uma cren�a qualquer e utilize essa cren�a
para ativar um plano./objetivo, imprima uma mensagem que o plano foi ativado.*/
 
/*Planos ativados quando o agente adiciona 
ou remove uma cren�a da sua base de cren�as */

/* Initial goals */

!viajar.

/* Plans */

+!viajar : true <- 	.print("vamo viajar ?");
	+passagem(aviao).
	
+passagem(aviao) <- .print("bora to pronta").

