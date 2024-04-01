// Agent kate in project projConversa.mas2j
/*Tell- Agente remetente pretende que o receptor acredite
que os conteúdo enviado é verdadeiro de acordo com
as crenças do remetente*/

/* Untell -Agente remetente pretende que o receptor não
acredite que o conteúdo enviado é verdadeiro de
acordo com as crenças do remetente*/

!falarpara.

+!falarpara : true <- 
	.print("Ola Bob,E sou sou linda");
	.send(bob,tell,kate(linda)).
+~kate(linda)[source(bob)] <-
	.print("besta");
	.send(bob,untell,kate(linda)).

