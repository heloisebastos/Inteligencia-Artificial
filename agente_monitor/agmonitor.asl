// Agent agmonitor in project agente_monitor.mas2j

/* 1) Crie um agente monitor, esse agente tem um plano para 
  imprimir uma mensagem "Ol�, Tudo bem?". 
  
  2) No agente monitor acima adicione que ele ir� imprimir a mensagem 
  apenas se ele tiver a cren�a que n�o � segunda.  */

 /*initial beliefs*/
 crenca(segunda).
 
 
/* Initial goals */

//!start.

 !objetivo.


/* Plans */

//+!start : true <- .print("ola,tudo bem").

+!objetivo(segunda) :  +~crenca(segunda)
 
 -crenca(segunda);
 .print("ola,tudo bem").


