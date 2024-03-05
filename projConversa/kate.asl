// Agent kate in project projConversa.mas2j



!falarpara.

+!falarpara : true <- 
.print("Ola Bob,E sou sou linda");
.send(bob,tell,kate(linda)).
+~kate(linda)[source(bob)] <-
.print("idiota");
.send(bob,untell,kate(linda)).

