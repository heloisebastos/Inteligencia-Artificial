// Agent agentecont in project contando.mas2j



/* Initial beliefs and rules */



cont(0).


/*initial goals*/
!start.
!contar.

+!start <-.print("iniciei").

/*Plans- Bloco de comando*/

+!contar:cont(I)& I<=10
<- .print("contando...",I);
-+cont(I+1);
!contar.

//tratamento de erros
-!contar <-  .print("sem eventos para executar").

