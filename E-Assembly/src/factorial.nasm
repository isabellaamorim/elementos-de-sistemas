; Arquivo: Factorial.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Calcula o fatorial do número em R0 e armazena o valor em R1.

leaw $1, %A
movw $1, (%A)

INICIO:
leaw $0, %A
movw (%A), %D
leaw $2, %A
movw %D, (%A)
leaw $FIM, %A
je 
nop

MULT:
leaw $2, %A
movw (%A), %D
decw %D
movw %D, (%A)
leaww $SOMA, %A
jge %D
nop
leaw $END, %A
jmp
nop

SOMA:
leaw $1, %A
movw (%A), %D
leaw $3, %A
addw (%A), %D, %D
movw %D, (%A)
leaw $MULT, %A
jmp
nop

END:
leaw $3, %A
movw (%A), %D
leaw $1, %A
movw %D, (%A)
leaw $3, %A
movw $0, (%A)
leaw $0, %A
movw (%A), %D
decw %D
movw %D, (%A)
leaw $FIM, %A
je
nop

leaw $INICIO, %A
jmp
nop

FIM: