
// Agent agmonitor1 in project agente_monitor.mas2j
/*1) Crie um agente monitor, esse agente tem um plano para 
  imprimir uma mensagem "Olá, Tudo bem?". */
  
/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */

+!start : true <- .print("ola tudo bem").

