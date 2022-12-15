`timescale 1ns/100ps
`include "main.v"

module main_tb;
    reg [3:0] operando; // Entrada de 4 bits
    reg controle; // Controle 0 para direita ou 1 para esquerda
    reg [2:0] rotacoes; // Quantidade de vezes que os bits serão rotacionados
    wire [3:0] saida; // Saída de 4 bits
    main main1(operando, controle, rotacoes, saida); // Instancia o módulo main

    initial begin
        $dumpfile("main_tb.vcd"); // Cria o arquivo de dump
        $dumpvars(0, main_tb); // Inicia o dump
        operando = 4'b0110; // 6
        controle = 1'b0; // 0 -> direita
        rotacoes = 2'b10; // 2
        #10
        operando = 4'b1110; // 14
        controle = 1'b1; // 1 -> esquerda
        rotacoes = 2'b11; // 3
        #10
        $finish; // para finalizar a simulação
    end
endmodule