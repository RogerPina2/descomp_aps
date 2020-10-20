# Gabriel Zanetti
# Roger Pina
# Insper 2020
import argparse

class Assembler():

    opcodes = {
        "LOAD"  : "0000",
        "STORE" : "0001",
        "INC"   : "0010",
        "DEC"   : "0011",
        "CMP"   : "0100",
        "JE"    : "0101",
        "JMP"   : "0110",
        "ADD"   : "0111",
        "SUB"   : "1000",
        "MOV"   : "1001",
        "ORL"   : "1010",
        "AND"   : "1011",
        "XOR"   : "1100",
        "NOTL"  : "1101"
    }

    jumps = [ "0101", "0110" ]

    registradores = {
        "R0" : "000",
        "R1" : "001",
        "R2" : "010",
        "R3" : "011",
        "R4" : "100",
        "R5" : "101",
        "R6" : "110",
        "R7" : "111"

	
    }

    enderecos = {
        "DISPLAY0"   : "0000000000",
        "DISPLAY1"   : "0000000001",
        "DISPLAY2"   : "0000000010",
        "DISPLAY3"   : "0000000011",
        "DISPLAY4"   : "0000000100",
        "DISPLAY5"   : "0000000101",
        "SW0"        : "0000000110",
        "SW1"        : "0000000111",
        "SW2"        : "0000001000",
        "SW3"        : "0000001001",
        "SW4"        : "0000001010",
        "SW5"        : "0000001011",
        "SW6"        : "0000001100",
        "SW7"        : "0000001101",
        "SW8"        : "0000001110",
        "KEY0"       : "0000001111",
        "KEY1"       : "0000010000",
        "KEY2"       : "0000010001",
        "KEY3"       : "0000010010",
        "READ_TIME"  : "0000010011",
        "CLEAR_TIME" : "0000010100"
    }


    labels = {}

    t_dados = 8
    t_ends  = 10
    t_opc   = 4
    t_regs  = 3

    def __init__(self, arquivo_entrada, arquivo_saida):
        self.instrucoes = self.ler_arquivo(arquivo_entrada)
        self.codigo_maquina = []
        self.arquivo_saida = arquivo_saida

    def limpa_linha(self, linha):
        linha = linha[:].split(";")
        linha = linha[0].split()
        return linha

    def assemble(self):
        self.decodifica()
        self.salvar_para_vhdl()

    def decodifica(self):
        self.find_labels()
        for instrucao in self.instrucoes:
            codigos = self.limpa_linha(instrucao)

            opc = self.decodifica_opc(codigos[0])
            if opc in self.jumps:
                reg = "000"
                end = self.decodifica_end_e_imediato(codigos[1])
            elif opc == "LABEL":
                continue
            else:
                reg = self.decodifica_reg(codigos[1])
                end = self.decodifica_end_e_imediato(codigos[2])

            self.codigo_maquina.append(opc + reg + end)

    def decodifica_opc(self, opcode):
        opcode = opcode.upper()
        if opcode in self.opcodes:
            return self.opcodes[opcode]
        elif opcode[:-1] in self.labels:
            return "LABEL"
        else:
            print(opcode)
            raise KeyError('OPCode não encontrado')

    def decodifica_reg(self, reg):
        reg = reg.upper()
        if reg[1:-1] in self.registradores:
            return self.registradores[reg[1:-1]]
        else:
            raise KeyError('Registrador não encontrado')

    def decodifica_end_e_imediato(self, end):
        end = end.upper()
        if end in self.enderecos:
            return self.enderecos[end]
        elif end in self.labels:
            binario = bin(self.labels[end])
            return (binario[2:]).zfill(self.t_ends)
        else:
            try:
                valor = int(end, 16)
            except:
                raise KeyError('Endereço não encontrado')
            if valor < (2**self.t_ends) - 1:
                binario = bin(valor)
                return (binario[2:]).zfill(self.t_ends)
            else:
                raise KeyError('Endereço não encontrado')


    def find_labels(self):
        i = 0
        for instrucao in self.instrucoes:
            codigos = self.limpa_linha(instrucao)
            if len(codigos) == 1 and ":" in codigos[0]:
                self.labels[codigos[0][:-1].upper()] = i
            else:
                i += 1

    def ler_arquivo(self, file):
        instrucoes = []
        with open(file, 'r') as f:
            instrucao = f.readline()
            while instrucao:
                if instrucao != '\n':
                    instrucoes.append(instrucao.split('\n')[0])
                instrucao = f.readline()
        return instrucoes

    def salvar_para_vhdl(self):
        s0 = self.t_opc
        s1 = self.t_opc+self.t_regs
        with open(self.arquivo_saida, 'w') as f:
            for linha, instrucao in enumerate(self.codigo_maquina):
                f.write(f'\t\ttmp({linha}) := \"{instrucao[:s0]}\" & \"{instrucao[s0:s1]}\" & \"{instrucao[s1:]}\";\n')


if __name__ == '__main__':
    argparse = argparse.ArgumentParser()
    argparse.add_argument('-i', '--input', default="./assembly.nasm")
    argparse.add_argument('-o', '--output', default="./codigo_vhdl.txt")

    args = argparse.parse_args()
    
    assembler = Assembler(args.input, args.output)
    assembler.assemble()