; =============================================================================
; T�TULO   : SPACE SHOOTER
; AUTORES  : PAU TONI BIBILONI MART�NEZ
;            JOAN MARTORELL COLL
; CREACI�N : 17-ENE-2024
; =============================================================================

            ORG     $1000

; --- INCLUSIONES DE C�DIGO ---------------------------------------------------

            INCLUDE "SYSCONST.X68"          ; CONSTANTES DEL SISTEMA
            INCLUDE "SYSTEM.X68"            ; C�DIGO DEL SISTEMA
            INCLUDE "CONST.X68"             ; CONSTANTES DEL USUARIO
            INCLUDE "UTIL.X68"              ; MACROS DE UTILIDAD Y SUBRUTINAS
            INCLUDE "PLAYER.X68"            ; GESTI�N DEL JUGADOR
            INCLUDE "AGENTLST.X68"          ; GESTI�N DE LA LISTA DE AGENTES
            INCLUDE "SHOT.X68"              ; GESTI�N DEL AGENTE DE DISPARO
            INCLUDE "ENEMIGO.X68"           ; GESTI�N DEL AGENTE ASTEROIDE
            INCLUDE "SPAWNER.X68"           ; GESTI�N DEL SPAWNER
            INCLUDE "XPLOSION.X68"          ; GESTI�N DEL AGENTE DE EXPLOSI�N
            INCLUDE "STATES.X68"            ; GESTI�N DE ESTADOS DEL JUEGO
            INCLUDE "STAR.X68"              ; GESTI�N DEL AGENTE ESTRELLA
            INCLUDE "IMAGES/SPRITES.X68"    ; BITMAP DE SPRITES
            INCLUDE "AUDIO.X68"             ; GESTI�N DE AUDIO
            INCLUDE "COUNTDOWN.X68"         ; MANEJADOR DE LA CUENTA REGRESIVA
            INCLUDE "DATA/RECORDSCORE.X68"  ; MANEJADOR DEL ARCHIVO DE PUNTUAC
            

; --- INICIALIZACI�N ----------------------------------------------------------

START       JSR     SYSINIT                 ; INICIALIZA EL C�DIGO DEL SISTEMA
            JSR     STAINIT                 ; INICIALIZA EL ESTADO DEL JUEGO
            JSR     AUDINIT                 ; INICIALIZA EL GESTOR DE AUDIO
            
            ; INICIALIZAMOS FRAMES POR SEGUNDO
            CLR.L   (FPSCOUNT)
            MOVE.L  #FPSGOAL,(FPSREAL)
            MOVE.B  #8,D0                   ; OBTENEMOS TIEMPO
            TRAP    #15
            MOVE.L  D1,(TIME)

; --- ACTUALIZACI�N -----------------------------------------------------------

.LOOP       TRAP    #KBDTRAP                ; LEE EL TECLADO
            JSR     STAUPD                  ; ACTUALIZA DEPENDIENDO DEL ESTADO

; --- ESPERA SINCRONIZACI�N ---------------------------------------------------

.WINT       TST.B   (SCRINTCT)              ; ESPERA A LA INTERRUPCI�N
            BEQ     .WINT
            CLR.B   (SCRINTCT)

; --- TRAZADO -----------------------------------------------------------------

            JSR     STAPLOT                 ; TRAZA DEPENDIENDO DEL ESTADO
            TRAP    #SCRTRAP                ; MUESTRA GR�FICOS
            
            ; ACTUALIZAMOS FPS
            MOVE.B  #8,D0                   ; OBTENEMOS TIEMPO
            TRAP    #15
            SUB.L   (TIME),D1               ; OBTENEMOS DIFERENCIA DE TIEMPO
            
            ADDQ.L  #1,(FPSCOUNT)           ; A�ADIMOS FRAME
            
            CMP.L   #100,D1                 ; VEMOS SI HA PASADO 1 SEGUNDO
            BLO     .NO
                        
            MOVE.L  (FPSCOUNT),(FPSREAL)    ; EN ESE CASO ACTUALIZAMOS FPS
            CLR.L   (FPSCOUNT)              ; RESETEAMOS CONTADOR


            MOVE.B  #8,D0                   ; RESETEAMOS TIEMPO
            TRAP    #15
            MOVE.L  D1,(TIME)

            
                                    
.NO         BRA     .LOOP                   ; BUCLE INFINITO
            SIMHALT

; --- VARIABLES ---------------------------------------------------------------

            INCLUDE "SYSVAR.X68"
            INCLUDE "VAR.X68"
            END    START





























*~Font name~Fixedsys~
*~Font size~9~
*~Tab type~1~
*~Tab size~4~
