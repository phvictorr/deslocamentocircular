/* Implemente um programa que faça uma operação de rotação (deslocamento
circular)1 em um operando de entrada de 4 bits. O sentido da rotação deve ser
uma entrada do programa e poderá ser para a direita (controle = 0) ou para a
esquerda (controle = 1). A quantidade de vezes que os bits serão rotacionados
também deve ser uma entrada do seu programa. Crie um testbench para verificar o
funcionamento do seu código. Exemplos de entradas e saídas:
a) Entrada: operando = 0110, controle = 0, rotações = 2.
Saída: 1001
b) Entrada: operando = 1110, controle = 1, rotações = 3.
Saída: 0111 

By Felipe Victor, @phvictorr

*/

module main(operando, controle, rotacoes, saida);
    input [3:0] operando; // Entrada de 4 bits
    input controle; // Controle 0 para direita ou 1 para esquerda
    input [2:0] rotacoes; // Quantidade de vezes que os bits serão rotacionados
    output [3:0] saida; // Saída de 4 bits
    reg [3:0] s3; // Saída intermediária

    assign saida = s3; // atribui registrador s3 à saída

    always @(controle)
    if(controle == 1'b1) // Se controle for 0, rotação para direita
        s3 = (operando << rotacoes) | (operando >> (4 - rotacoes));

    always @(controle)
    if(controle == 1'b0) // Se controle for 0, rotação para direita
        s3 = (operando >> rotacoes) | (operando << (4 - rotacoes));

endmodule