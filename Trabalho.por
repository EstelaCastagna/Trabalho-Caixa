programa
{
	inclua biblioteca Util
	
	funcao inicio(){
			
			menu()
	}
	
	funcao menu() {
		cadeia volta
		inteiro opcao
		real retirada,saque, saldo=1000.00, deposito, saldo_n

		escreva("MENU\n")
		para(inteiro i = 0; i < 50; i++) {
		  escreva ("-")
		}
		escreva("\n1) Saque\n")
		escreva("2) Extrato\n")
		escreva("3) Depósito\n")
		escreva("4) Sair\n")
		para(inteiro i = 0; i < 50; i++) {
		  escreva ("-")
		}
		escreva("\nDigite a opção escolhida: ")
		leia (opcao)
		limpa()

		escolha (opcao) {

			caso 1:
			escreva ("Digite o valor que deseja sacar: ")
			leia (retirada)

		se (retirada <= saldo) {
			saque = saldo - retirada
			limpa()
			escreva ("Saque efetuado!\nSeu saldo restante é R$ "+saque)
			escreva ("\nDeseja voltar ao menu? ")
			leia (volta)
			se (volta == "sim"){
				limpa()
				voltmenu()
			}
			senao se (volta == "Sim") {
				limpa()
				voltmenu()
			}
			senao {
				limpa()
				escreva ("Operação Finalizada!\n")
			}
		}
		senao se (retirada > saldo){
			limpa()
			escreva ("Saldo indisponível!\nSeu limite é R$"+saldo)
			escreva ("\nDeseja voltar ao menu? ")
			leia (volta)
			se (volta == "sim"){
				limpa()
				voltmenu()
			}
			senao se (volta == "Sim") {
				limpa()
				voltmenu()
			}
			senao {
				limpa()
				escreva ("Operação Finalizada!\n")
			}
			
		}
		senao {
			voltmenu()
		}
		pare
			caso 2:
			escreva ("Seu saldo é de "+saldo)
			escreva ("\nDeseja voltar ao menu? ")
			leia (volta)
			se (volta == "sim"){
				limpa()
				voltmenu()
			}
			senao se (volta == "Sim") {
				limpa()
				voltmenu()
			}
			senao {
				limpa()
				escreva ("Operação Finalizada!\n")
			}
			pare

			caso 3:
			escreva ("Digite o valor que deseja depositar: ")
			leia (deposito)
			saldo_n = saldo + deposito
			limpa()
			escreva ("Deposito efetuado!\nSeu saldo total é R$ "+saldo_n)
			escreva ("\nDeseja voltar ao menu? ")
			leia (volta)
			se (volta == "sim"){
				limpa()
				voltmenu()
			}
			senao se (volta == "Sim") {
				limpa()
				voltmenu()
			}
			senao {
				limpa()
				escreva ("Operação Finalizada!\n")
			}
			pare

			caso 4:
			escreva("Operação Finalizada!\n")

			pare

			caso contrario:
			escreva ("Opção Inválida!\n")
		}
	
	}
	
	funcao voltmenu(){
		inteiro tempo_i=1, tempo_f=3
		
		escreva("Voltando ao menu.")
		enquanto (tempo_i<=tempo_f){
			limpa()
			escreva (tempo_i)
			Util.aguarde(1000)
			tempo_i++
		}
		limpa()
		menu()
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1009; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */