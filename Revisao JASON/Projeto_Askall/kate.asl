// Agent kate in project Projeto_Askall.mas2j


!previsao.

+!previsao <-
	!falarpara.

+!falarpara : true <-
		.print("qual a previsao do tempo ?");
		.send(bob, askAll, tempo(Nome)).
		
+tempo(sol) : tempo(X) & (X == sol) <- .print("a previsao eh sol"). 
+tempo(chuva) : tempo(X) & (X == chuva) <- .print("a previsao eh chuva"). 

