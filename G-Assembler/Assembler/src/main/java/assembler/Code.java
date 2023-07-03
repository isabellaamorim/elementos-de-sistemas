/**
 * Curso: Elementos de Sistemas
 * Arquivo: Code.java
 */

package assembler;

/**
 * Traduz mnemônicos da linguagem assembly para códigos binários da arquitetura Z0.
 */
public class Code {

    /**
     * Retorna o código binário do(s) registrador(es) que vão receber o valor da instrução.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 4 bits) com código em linguagem de máquina para a instrução.
     */
    public static String dest(String[] mnemnonic) {
        /* TODO: implementar */
        switch (mnemnonic[0]){
            case "movw %A, %D" :
            case "movw (%A), %D" :
            case "addw (%A) %D %D":
            case "incw %D" :
            case "decw %D" :
            case "notw %D" :
            case "negw %D" :
            case "andw (%A) %D %D":
            case "orw (%A) %D %D":
                return "0010";

            case "movw %A, (%A)" :
            case "incw (%A)" :
                return "0100";

            case "movw %A, %D, (%A)" : return "0110";

            case "incw %A" :
            case "subw %D (%A) %A" :
            case "rsubw %D (%A) %A":
            case "decw %A" :
            case "notw %A":
            case "negw %A" :
            case "andw %D %A %A":
            case "orw %D %A %A":
                return "0001";
            case "nop" :
            case "jmp":
            case "jle":
            case "jne":
            case "jl":
            case "jge":
            case "je":
            case "jg":
                return "0000";

        }
        return null;
    }

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de cálculo.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 7 bits) com código em linguagem de máquina para a instrução.
     */
    public static String comp(String[] mnemnonic) {

        switch (mnemnonic[0]){
            case "movw"  : 
                switch (mnemnonic[1]) {
                    case "%A"  : return "000110000";
                    case "%D"  : return "000001100";
                    case "(%A)"  : return "001110000";
                    case "$1"  : return "000111111";
                    default : return "000101010";
                }

            case "addw"  : 
                switch (mnemnonic[1]) {
                    case "%A"  : switch (mnemnonic[2]) {
                        case "%D"  : return "000000010";
                    };
                    
                    case "%D"  : switch (mnemnonic[2]) {
                        case "%A"  : return "000000010";
                        case "(%A)"  : return "001000010";
                        case "$1"  : return "000011111";
                    };

                    case "$1"  : switch (mnemnonic[2]) {
                        case "%D"  : return "000011111";
                        case "(%A)"  : return "001110111";
                    };

                    case "(%A)"  : switch (mnemnonic[2]) {
                        case "%D"  : return "001000010";
                        case "$1"  : return "001110111";
                    };
                };

            case "incw"  : 
                switch (mnemnonic[1]) {
                    case "%A"  : return "000110111";
                    case "%D"  : return "000011111";
                    case "(%A)"  : return "001110111";
                };

            case "subw"  : 
                switch (mnemnonic[1]) {
                    case "%A"  : switch (mnemnonic[2]) {
                        case "%D"  : return "000000111";
                        case "$1"  : return "000110010";
                    };
                    case "%D"  : switch (mnemnonic[2]) {
                        case "%A"  : return "000010011";
                        case "(%A)"  : return "001010011";
                    };
                    case "(%A)"  : switch (mnemnonic[2]) {
                        case "$1"  : return "001110010";
                        case "%D"  : return "01000111";
                    };
                };

            case "rsubw"  :  
                switch (mnemnonic[1]) {
                    case "%A"  : return "000010011";
                    case "%D"  : switch (mnemnonic[2]) {
                        case "%A"  : return "000000111";
                        case "(%A)"  : return "001000111";
                    };
                    case "(%A)"  : return "001000111";
                    case "$1"  : return "000110010";
                };
            
            case "decw"  : 
                switch (mnemnonic[1]) {
                    case "%D"  : return "000001110";
                    case "%A"  : return "000110010";
                    case "(%A)"  : return "001110010";
                };

            case "notw"  : 
                switch (mnemnonic[1]) {
                    case "%D"  : return "000001101";
                    case "%A"  : return "000110001";
                    case "(%A)"  : return "000110001";
                };

            case "negw"  : 
                switch (mnemnonic[1]) {
                    case "%D"  : return "000001111";
                    case "%A"  : return "000110011";
                    case "(%A)"  : return "001110011";
                };

            case "andw"  : 
                switch (mnemnonic[1]) {
                    case "%D"  : switch (mnemnonic[2]) {
                        case "%A"  : return "000000000";
                        case "(%A)"  : return "001000000";
                    };
                    case "(%A)"  : return "001000000";
                    case "%A"  : return "000000000";
                };

            case "orw"  : 
                switch (mnemnonic[1]) {
                    case "%D"  : switch (mnemnonic[2]) {
                        case "%A"  : return "000010101";
                        case "(%A)"  : return "001010101";
                    };
                    case "(%A)"  : return "001010101";
                    case "%A"  : return "000010101";
                };

            default : return "000001100";
        }

    }

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de jump (salto).
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 3 bits) com código em linguagem de máquina para a instrução.
     */
    public static String jump(String[] mnemnonic) {

        switch (mnemnonic[0]){
            case "jmp"  : return "111";
            case "je"  : return "010";
            case "jne"  : return "101";
            case "jg"  : return "001";
            case "jge"  : return "011";
            case "jl"  : return "100";
            case "jle"  : return "110";

            default    : return "000";

        }
    }

    /**
     * Retorna o código binário de um valor decimal armazenado numa String.
     * @param  symbol valor numérico decimal armazenado em uma String.
     * @return Valor em binário (String de 15 bits) representado com 0s e 1s.
     */
    public static String toBinary(String symbol) {
        /* TODO: implementar */
        int a = Integer.parseInt(symbol);
        String b = Integer.toBinaryString(a);
        int l = b.length();
        int c = 16 - l;
        while (c > 0){
            b = "0" + b;
            c = c -1;
        }
    	return b;
    }

}
