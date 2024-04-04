// Agent pessoa in project quest_04_HeloiseBastos.mas2j

qtd(0).//Quantidade de liquido em ml

!abrirCopo.

+!abrirCopo : qtd(M)
<-
	.print("Quantidade na garrafa: ",M," ml");
	.send(garrafa, tell, qtd(M));
	.wait(1000);
	!beber.

+!beber : qtd(M) & garrafa(cheia)
<- 
	.wait(1000);
	.print("Bebendo...");
	.wait(1000);
	-+qtd(M-50);
	!abrirCopo.
	
+!beber : qtd(M) & garrafa(vazia)
<- 
	.wait(1000);
	.print("Enchendo...");
	.wait(1000);
	-+qtd(M+250);
	.send(garrafa, untell, qtd(M));
	!abrirCopo.
	



