// Agent garrafa in project quest_04_HeloiseBastos.mas2j

garrafa(cheia).

!checarQtd.

+!checarQtd : true 
<- 
	.send(pessoa, tell, garrafa(vazia));
	.wait(500);
	!avisar.
	
+!avisar : qtd(M) & M <= 100
<-
	.send(pessoa, untell, garrafa(cheia));
	.send(pessoa, tell, garrafa(vazia));
	.wait(500);
	.print("Sua garrafa esta proxima de esvaziar");
	!checarQtd.

-!avisar
<-
	.send(pessoa, tell, garrafa(cheia));
	!checarQtd.

