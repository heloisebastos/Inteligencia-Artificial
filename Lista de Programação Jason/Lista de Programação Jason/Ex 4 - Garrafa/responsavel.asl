// Agent responsavel in project Garrafa.mas2j

/* Initial beliefs and rules */

/* Initial goals */

!start.
!info_garrafa.
/* Plans */

+!start : true <- .print("Ol�").
+!info_garrafa : true <- .print("Garrafa cheia");
.
