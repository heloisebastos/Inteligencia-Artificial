// Agent kate in project projConversa.mas2j
/*Tell- Agente remetente pretende que o receptor acredite
que os conte�do enviado � verdadeiro de acordo com
as cren�as do remetente*/

/* Untell -Agente remetente pretende que o receptor n�o
acredite que o conte�do enviado � verdadeiro de
acordo com as cren�as do remetente*/

!falarpara.

+!falarpara : true <- 
	.print("Ola Bob,E sou sou linda");
	.send(bob,tell,kate(linda)).
+~kate(linda)[source(bob)] <-
	.print("besta");
	.send(bob,untell,kate(linda)).

