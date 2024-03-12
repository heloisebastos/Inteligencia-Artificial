// Agent kate in project project_unachieve.mas2j

/* unachieve  - manda um objetivo para o
destinatario ate ele atender este objetivo */

/* Initial goals */

!falarpara.

/* bloco de acoes*/

+!falarpara : true <-
.print("Por favor,ligar a luz");
.send(bob, achieve, ligar(ok)).

+luz(ligada) <-
.send(bob,unachieve,ligar(ok)).



