// Agent claustrofobico in project room.mas2j

/* Initial beliefs and rules */
fechada(porta).

//objetivo,bloco de acoes
+fechada(porta): true
	<- .print ("Porta fechada.Vou abrrir!!!");
		 +~fechada(porta); 
		 -fechada(porta);
		//-fechada(porta);
		//+aberta(porta);
		.print("porta aberta").

