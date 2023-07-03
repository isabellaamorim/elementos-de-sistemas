; Arquivo: Abs.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Copia o valor de RAM[1] para RAM[0] deixando o valor sempre positivo.


leaw $1, %A    ; faz %A = 1 (%A aponta para RAM[1]),  carrega o R1 
movw (%A), %D ; move pro registrador D e guarda lá por enquanto 
leaw $PULA, %A ;acessa a o ram 0 , voce aponta o registrado A pro seu jump
jge %D
nop 
negw %D 
PULA: ; crua um lugar no meio de todas as rams, que vai se chamar pula, ai voce quer mover o valor pra um espaço no meio das rams que vai fazer o pula
leaw $0, %A
movw %D, (%A)  ; move do registrador %D para o ram %A
