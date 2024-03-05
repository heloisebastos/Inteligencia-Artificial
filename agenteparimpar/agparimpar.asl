// Agent agparimpar in project agenteparimpar.mas2j

/* Initial beliefs and rules */

/* Initial goals */

//!start.



!print_par(-15).
+!print_par(N)
<- !par(N,F);
	.print(N," = ",F).
+!par(N,F) :((N mod 2)== 0)<- F=par.
+!par(N,F) :((N mod 2) \== 0)<- F=impar.


/* Plans */


