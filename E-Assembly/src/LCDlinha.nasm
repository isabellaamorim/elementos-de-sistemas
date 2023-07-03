; Arquivo: LCDQuadrado.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Desenhe uma linha no LCD


leaw $16384, %A
movw %A, %D
leaw $0, (%A)
movw %D, (%A)

leaw $16403, %A
movw %A, %D
leaw $1, (%A)
movw %D, (%A)

LOOP:
    leaw $0, %A 
    movw (%A), %A
    movw $-1, (%A)
    incw %A
    movw %A, %D
    leaw $0, %A
    movw %D, (%A)
    leaw $1, %A
    subw (%A), %D, %D
    leaw $LOOP, %A
    jge %D
    nop