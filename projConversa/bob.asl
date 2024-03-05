// Agent bob in project projConversa.mas2j



//!falarpara.
//+!falarpara : true <- 
//.print("Ola kate,tambem acho");
//.send(bob,tell,bob(tambemacho)).

+kate(linda) <-
+~kate(linda);
.print("nao,voce nao e!");
.send(kate,tell,~kate(linda)).
