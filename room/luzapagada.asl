// Agent luzapagada in project room.mas2j

/* Initial beliefs and rules */

acessa(luz).

+acessa(luz) : true
	<- .print("Luz acessa,vou apagar");
		+~acessa(luz);
		-acessa;
		.print("Luz apagada").

