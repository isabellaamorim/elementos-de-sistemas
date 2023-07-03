; Arquivo: LCDQuadrado.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Desenhe um quadro no LCD

leaw $16384, %A
movw $-1, (%A)
leaw $16404, %A
movw $-1, (%A)
leaw $16424, %A
movw $-1, (%A)
leaw $16444, %A
movw $-1, (%A)
leaw $16464, %A
movw $-1, (%A)
leaw $16484, %A
movw $-1, (%A)
leaw $16504, %A
movw $-1, (%A)
leaw $16524, %A
movw $-1, (%A)
leaw $16544, %A
movw $-1, (%A)
leaw $16564, %A
movw $-1, (%A)
leaw $16584, %A
movw $-1, (%A)
leaw $16604, %A
movw $-1, (%A)
leaw $16624, %A
movw $-1, (%A)
leaw $16644, %A
movw $-1, (%A)