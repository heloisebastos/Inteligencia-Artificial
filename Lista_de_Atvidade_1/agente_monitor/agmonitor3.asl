// Agent agmonitor3 in project agente_monitor.mas2j

/*  3) Adicione a crença que não é segunda.*/

/* Initial beliefs and rules */

eh(segunda).
naoeh(segunda).

!semana.

+!semana : true
	<- .print("que dia eh hoje ?");
	+eh(segunda);
	.print("eh segunda :( ");
	.print("calma,ai! vou resolver isso");
	-eh(segunda);
	+naoeh(segunda);
	.print("hoje eh sexta,ebaa!").
	
