; Arquivo: Abs.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017
; Adicione o valor de RAM[1] com RAM[0] gravando em RAM[2].

 leaw $0,%A         ;faz %A = 0 (%A aponta para RAM[0])
 movw (%A),%D       ;move o valor RAM[%A] para %D
 leaw $1,%A         ;faz %A = 1 (%A aponta para RAM[1])
 addw (%A), %D, %D  ;soma o primeiro + segundo e guarda no terceiro (D = RAM[A]+D )
 leaw $2, %A        ;faz %A = 2 (%A aponta para RAM[2])
 movw %D, (%A)      ;move o valor %D para RAM[%A]
 