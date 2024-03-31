// Agent agmonitor0 in project agente_monitor.mas2j

/*2) No agente monitor acima adicione que ele irá imprimir a mensagem 
  apenas se ele tiver a crença que não é segunda. */

/* Initial beliefs and rules */

dia(segunda).

!semana.

+!semana : true
	<- .print("eh segunda");
	+~dia(segunda);
	-dia;
	.print("ola tudo bem,hoje eh sexta,ebaa!").
	






