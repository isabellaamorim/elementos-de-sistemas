; Arquivo: Abs.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; faz uma subtracao binaria do valor de :  RAM[1] - RAM[0] gravando em RAM[2].

 leaw $1,%A         ;faz %A = 1 (%A aponta para RAM[1])
 movw (%A),%D       ;move o valor RAM[%A] para %D
 leaw $0,%A         ;faz %A = 0 (%A aponta para RAM[0])
 subw %D, (%A), %D  ;subtrai o primeiro - segundo e guarda no terceiro (D = D - RAM[A])
 leaw $2, %A        ;faz %D = 2 (%D aponta para RAM[2])
 movw %D, (%A)      ;move o valor %D para RAM[%A]
 