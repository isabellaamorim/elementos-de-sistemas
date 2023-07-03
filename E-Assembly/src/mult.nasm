; Arquivo: Abs.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Multiplica o valor de RAM[1] com RAM[0] salvando em RAM[3]

INICIO:
leaw $0, %A
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
leaw $INICIO, %A
jmp
nop

END:
nop