// Agent bob in project untell.mas2j

//bob ativa o plano recebido
+kate(saldacao) <-
 +~kate(saldacao);
 .print("Nao eh um bom dia");
 .send(kate, tell, ~kate(saldacao)).

