// Agent lojafisica in project ProjetoCompras.mas2j


+!loja(aberta) <- 
	.print("sim estamos atendendo");
	.send(agenteCompras,tell,loja(aberta)).

	


