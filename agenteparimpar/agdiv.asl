// Agent agparimpar in project agenteparimpar.mas2j

/* Initial beliefs and rules */

!print_valor(15).

+!print_valor(N)<- 
    !valor(N,F);
	.print(N," = ",F," divide por 3 e 6").
	
+!valor(N,F) :(((N mod 3) == 0) & ((N mod 6)== 0))<- F=sim.
+!valor(N,F) :(((N mod 3) \== 0) & ((N mod 6) \== 0))<- F=nao.
+!valor(N,F) :(((N mod 3) == 0) & ((N mod 6) \== 0))<- F=nao.
+!valor(N,F) :(((N mod 3) \== 0) & ((N mod 6) == 0))<- F=nao.



/* Plans */


