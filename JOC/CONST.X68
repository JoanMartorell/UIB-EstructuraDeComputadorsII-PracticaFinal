; =============================================================================
; CONSTANTES DEL SISTEMA
; =============================================================================

; --- ESTADOS DEL JUEGO -------------------------------------------------------

STANONE     EQU     -1                      ; MARCADOR PARA FORZAR CAMBIO
STAINTR     EQU     0                       ; ESTADO DE INTRO/PRESIONAR DISPARO
STAPLAY     EQU     1                       ; ESTADO NORMAL DEL JUEGO
STAGOVR     EQU     2                       ; ESTADO DE JUEGO TERMINADO

; --- TIPOS DE AGENTES --------------------------------------------------------

SHTTYPE     EQU     1
ASTTYPE     EQU     2
XPLTYPE     EQU     3
STRTYPE     EQU     4

; --- VALORES DE COLOR --------------------------------------------------------

BLACK       EQU     $00000000
MAROON      EQU     $00000080
GREEN       EQU     $00008000
OLIVE       EQU     $00008080
NAVY        EQU     $00800000
PURPLE      EQU     $00800080
TEAL        EQU     $00808000
GRAY        EQU     $00808080
RED         EQU     $000000FF
LIME        EQU     $0000FF00
YELLOW      EQU     $0000FFFF
BLUE        EQU     $00FF0000
FUCHSIA     EQU     $00FF00FF
AQUA        EQU     $00FFFF00
LITGRAY     EQU     $00C0C0C0
ORANGE      EQU     $0000C0FF
WHITE       EQU     $00FFFFFF

; --- CONSTANTES RELACIONADAS CON EL CORAZ�N ----------------------------------

HTBORDER    EQU     15                      ; BORDE DEL CORAZ�N
HTHEIGH     EQU     14                      ; ALTURA DEL CORAZ�N
HTWIDTH     EQU     15                      ; ANCHO DEL CORAZ�N
HTTILSIZ    EQU     3                       ; TAMA�O DEL TILE DEL CORAZ�N
HTTILCL1    EQU     RED                     ; COLOR 1 DEL TILE DEL CORAZ�N
HTTILCL2    EQU     BLACK                   ; COLOR 2 DEL TILE DEL CORAZ�N
HTTILCL3    EQU     WHITE                   ; COLOR 3 DEL TILE DEL CORAZ�N

; --- CONSTANTES RELACIONADAS CON EL JUGADOR ----------------------------------

PLRWIDTH    EQU     30                      ; ANCHO DEL JUGADOR(PIXELS)
PLRHEIGH    EQU     15                      ; ALTURA DEL JUGADOR(PIXELS)                     
PLRINLIF    EQU     3                       ; VIDAS INICIALES DEL JUGADOR
PLRSPEED    EQU     5                       ; VELOCIDAD JUGADOR(PIXELS POR INT)
PLRNRMCL    EQU     ORANGE                  ; COLOR NORMAL DEL JUGADOR
PLRUMDMG    EQU     %00000001               ; M�SCARA DE ACTUALIZACI�N DE DA�O
PLRPMDMG    EQU     %00000010               ; M�SCARA DE TRAZADO DE DA�O
PLRUBDMG    EQU     0                       ; BIT DE ACTUALIZACI�N DE DA�O
PLRPBDMG    EQU     1                       ; BIT DE TRAZADO DE DA�O
PLRTXTCL    EQU     WHITE                   ; COLOR DE LA FUENTE
PLRTXTX     EQU     2                       ; COORDENADA X DE LA PUNTUACI�N
PLRTXTY     EQU     1                       ; COORDENADA Y DE LA PUNTUACI�N
FPGTXTX     EQU     65                      ; FPS GOAL X COORDENADA
FPGTXTY     EQU     1                       ; FPS GOAL Y COORDENADA
FPSTXTX     EQU     63                      ; COORDENADA X DE TIEMPO
FPSTXTY     EQU     2                       ; COORDENADA Y DE TIEMPO
FPSGOAL     EQU     30                      ; FPS GOAL

; --- CONSTANTES RELACIONADAS CON EL DISPARO ----------------------------------

SHTWIDTH    EQU     20                      ; ANCHO DEL DISPARO(PIXELS)
SHTHEIGH    EQU     3                       ; ALTURA DEL DISPARO. SOLO DIBUJAR.
SHTSPEED    EQU     -10                     ; VELOCIDAD DISPARO(PIXELS POR INT)

; --- CONSTANTES SOBRE EL ENEMIGO ---------------------------------------------

ENEWIDTH    EQU     50                      ; ANCHURA DEL ENEMIGO
ENEHEIGH    EQU     30                      ; ALTURA DEL ENEMIGO
ENECOL1     EQU     AQUA                    ; COLOR DEL BORDE DEL ASTEROIDE
ENECOL2     EQU     LIME                    ; COLOR DE RELLENO DEL ASTEROIDE
ASTDMG      EQU     10                      ; DA�O DEL ASTEROIDE AL JUGADOR
ASTNFRAG    EQU     10                      ; NUMBER OF FRAGMENTS IN EXPLOSION
ASTSCORE    EQU     5                       ; SCORE ASTEROID DESTRUCTION

; --- CONSTANTES RELACIONADAS CON LA EXPLOSI�N --------------------------------

XPLSIZE     EQU     2                       ; DIAMETRO DE LA EXPLOSI�N(PIXELS)
XPLPENCL    EQU     RED                     ; COLOR DEL BORDE DE LA EXPLOSI�N
XPLFILCL    EQU     RED                     ; COLOR DEL RELLENO DE LA EXPLOSI�N

; --- CONSTANTES RELACIONADAS CON LA ESTRELLA ---------------------------------

SSTRSIZE    EQU     2                       ; DI�METRO ESTRELLA PEQUE�A(PIXELS)
SSTRSPEED   EQU     2                       ; VELOCIDAD DE LA ESTRELLA PEQUE�A
BSTRSIZE    EQU     5                       ; DI�METRO ESTRELLA GRANDE(PIXELS)
BSTRSPEED   EQU     5                       ; VELOCIDAD DE LA ESTRELLA GRANDE

; --- CONSTANTES RELACIONADAS CON EL ESTADO DE INTRODUCCI�N -------------------

INTPRSX     EQU     28                      ; PRESS ANYTHING X COORDENADA
INTPRSY     EQU     31                      ; PRESS ANYTHING Y COORDENADA
INTPRSC     EQU     WHITE                   ; PRESS ANITHING COLOR

TOPTXTX     EQU     30
TOPTXTY     EQU     19
TP1TXTX     EQU     34
TP1TXTY     EQU     21
TP2TXTX     EQU     34
TP2TXTY     EQU     23
TP3TXTX     EQU     34
TP3TXTY     EQU     25

IMGINTSZ    EQU     32                      ; TAMA�O EN TILES
IMGTILSZ    EQU     8                       ; TAMA�O DE UN TILE EN PIXELES

; --- CONSTANTES RELACIONADAS CON EL ESTADO DE GAME OVER ----------------------

GOVSTRX     EQU     35                      ; TITLE X COORDENADA
GOVSTRY     EQU     15                      ; TITLE Y COORDENADA
GOVSCOX     EQU     33
GOVSCOY     EQU     20
GOVNRX      EQU     30
GOVNRY      EQU     24
GOVSTRC     EQU     WHITE                   ; COLOR DEL T�TULO
NUMSCOS     EQU     3                       ; N� DE PUNTUACIONES QUE GUARDARA
FNAME       DC.B    'DATA/SCORES.DAT',0
            DS.W    0

; --- CONSTANTES RELACIONADAS CON EL AUDIO ------------------------------------

AUDINTID    EQU     0                       ; ID DE LA M�SICA DE INTRO
AUDSHTID    EQU     1                       ; ID DEL SONIDO DE DISPARO
AUDIMPID    EQU     2                       ; ID DEL SONIDO DE IMPACTO
AUDHERID    EQU     3                       ; ID DEL SONIDO DE DA�O
AUDGOVID    EQU     4                       ; ID DEL SONIDO DE GAME OVER
AUDCDNID    EQU     5                       ; ID DEL SONIDO DE COUNTDOWN
AUDCDFID    EQU     6                       ; ID DEL SONIDO FINAL DE COUNTDOWN

AUDENDID    EQU     $FF                     ; ID PARA DETENER TODOS LOS SONIDOS
AUDMSKLP    EQU     $80                     ; M�SCARA DE AUDIO DE BUCLE
AUDMSKNL    EQU     $00                     ; M�SCARA DE AUDIO SIN BUCLE
AUDACCY     EQU     $FF                     ; ACEPTAR REPRODUC. DE NUEVO SONIDO
AUDACCN     EQU     $00                     ; NO REPRODUCIR NUEVO SONIDO

; --- CONSTANTES SOBRE LA CUENTA REGRESIVA ------------------------------------

INITCR      EQU     4                       ; NUMERO DE VECES A CONTAR
NUMHEIGH    EQU     300                     ; ALTURA DEL NUMERO
NUMWIDTH    EQU     200                     ; ANCHURA DEL NUMERO
NUMSIZE     EQU     30                      ; TAMA�O DEL NUMERO
NUMCOLOR    EQU     WHITE                   ; COLOR DEL NUMERO 



























*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
