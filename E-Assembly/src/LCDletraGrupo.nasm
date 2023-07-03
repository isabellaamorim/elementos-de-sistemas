; Arquivo: LCDletraGrupo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Escreva no LCD a letra do grupo de vocês
;  - Valide no hardawre
;  - Bata uma foto!


leaw $7, %A
movw %A, %D
leaw $18242, %A
movw %D, (%A)
leaw $18302, %A
movw %D, (%A)

leaw $4, %A
movw %A, %D
leaw $18262, %A
movw %D, (%A)
leaw $18282, %A
movw %D, (%A)
leaw $18342, %A
movw %D, (%A)
leaw $18322, %A
movw %D, (%A)


