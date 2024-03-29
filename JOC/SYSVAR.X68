; =============================================================================
; VARIABLES DEL SISTEMA
; TEN EN CUENTA QUE TODAS ESTAS VARIABLES SE UTILIZAN PARA COMPARTIR DATOS DEL 
; SISTEMA AL USUARIO. POR LO TANTO, NO DEBEN ESTAR EN MEMORIA PROTEGIDA.
; TEN EN CUENTA QUE USAR DMMDATA DE ESTA MANERA ES UNA MALA IDEA, YA QUE LAS 
; APLICACIONES DE USUARIO TAMBI�N PUEDEN LIBERAR O CAMBIAR LA PROPIEDAD. 
; SIN EMBARGO, PARA EL PROP�SITO DE ESTE EJEMPLO, ES SUFICIENTEMENTE BUENO.
; =============================================================================

; --- VARIABLES RELACIONADAS CON EL TECLADO ----------------------------------

KBDVAL      DS.B    1                       ; TECLA PULSADA = 1
KBDEDGE     DS.B    1                       ; CAMBIO DE TECLA = 1

            DS.W    0

; --- VARIABLES RELACIONADAS CON LA PANTALLA ---------------------------------

SCRINTCT    DS.B    1                       ; CONTADOR/FLAG DE INTERRUPCI�N
SCRCYCCT    DS.B    1                       ; CONTADOR DE CICLOS
            DS.W    0

; --- VARIABLES DE MEMORIA DIN�MICA ------------------------------------------

            ORG     (*+DMMBSIZE-1)&-DMMBSIZE ; ALINEAR A DMMBSIZE
DMMDATA     DS.B    DMMBSIZE*DMMBNUM         ; ESPACIO DE ASIGNACI�N DE 
                                             ; MEMORIA DIN�MICA
            DS.W    0                        ; POR SI ACASO





*~Font name~Courier New~
*~Font size~10~
*~Tab type~0~
*~Tab size~4~
