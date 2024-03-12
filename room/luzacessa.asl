// Agent luzacessa in project room.mas2j

/* crenca */
apagada(luz).

+apagada(luz): true
	<- .print("Luz apagada,vou acender");
		+~apagada(luz);
		-apagada;
		.print("Luz acessa").

