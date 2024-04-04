// Agent responsavel in project Garrafa.mas2j

/* Initial beliefs and rules */

/* Initial goals */

!start.
!info_garrafa.
/* Plans */

+!start : true <- .print("Olá").
+!info_garrafa : true <- .print("Garrafa cheia");
.
