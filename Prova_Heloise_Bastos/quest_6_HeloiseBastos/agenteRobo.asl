// Agent agenteRobo in project quest_6_HeloiseBastos.mas2j

bateria(100).

!checarBateria.

+!checarBateria : bateria(B) & B > 10
<-
	.wait(1000);
	.print("Andando");
	-+bateria(B-15);
	.print("Nivel de bateria: ", B);
	!checarBateria.
	
+!checarBateria : bateria(B) & B <= 10
<-
	.print("Nivel de bateria: ", B);
	.print("bateria baixa!");
	.wait(1000);
	.print("Recarregando...");
	-+bateria(B+90);
	.wait(5000);
	.print("Pronto pro novo role");
	!checarBateria.

