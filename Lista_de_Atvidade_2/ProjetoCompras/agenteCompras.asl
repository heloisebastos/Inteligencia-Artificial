// Agent agenteCompras in project ProjetoCompras.mas2j

compararpreco(X,Y).
!compraritens.

/* Plans */

+!compraritens <- 
	+additem(Item);
	+removeritem(Item);
	+pesquisaritem(Item);
	+compararpreco(2,8);
	+pesquisarItem(Item);
	+ondecomprar(Item).
	
+additem(Item)<- 
	if(Item \== null){
	.print("item adicionado");
	}.
	
+removeritem(Item)<-
	+~removeritem(Item);
	-removeritem;
	.print("item removido").
		
+compararpreco(X,Y)<-
	if(X == Y){
		.print("itens iguais");
	}else {
		.print("preco diferente");
	}.
    
+pesquisaritem(Item) <-
	.print("falta fazer").
	
+ondecomprar(Item) <-
	.print("loja aberta?");
	.send(lojafisica,achieve,loja(aberta)).
	

