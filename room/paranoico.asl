// Agent paranoico in project room.mas2j

/* Initial beliefs and rules */

aberta(porta).

/* plans */
	+aberta(porta) : true 
		<- .print("Porta aberta.Vou fechar!!!");
		+~aberta(porta);
		-aberta(porta);
		//-aberta(porta);
		//+fechada(porta);
		.print("Porta fechada...").

