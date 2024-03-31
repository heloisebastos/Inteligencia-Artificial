// Agent a1 in project ProjetoMSG.mas2j

/* Initial beliefs and rules */

msg(fr,"bonjour").
msg(br,"bom dia").
msg(it,"boun giorno").
msg(us,"good morning").

country(fr).

/* Initial goals */

!start.

/* Plans */

+!start :country(C) & msg (C,M) <- .print(M).

