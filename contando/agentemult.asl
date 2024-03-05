// Agent de multiplicacao 

/* Initial beliefs and rules */

cont(0).

/*initial goals*/
!start.
!contar.

+!start <-.print("iniciei").

/*Plans- Bloco de comando*/

+!contar: cont(I)& I<=10 <-
 .print("contando...",I*2);
 -+cont(I+1);
//.print(I*2);
!contar.

//tratamento de erros
-!contar <-  .print("sem eventos para executar").


