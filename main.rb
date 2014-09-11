require_relative 'Product.rb'

#Constantes
STOCK = 1
SALES = 2
DELIVERY =3 
EXIT = 4

REGISTER_PRODUCT = 11
STOCK_CONTROL = 12

NEW_ORDER = 21
EDIT_ORDER = 22
CANCEL_ORDER = 23

LIST_ORDERS = 31
DELIVERY_ORDER = 32




puts "-------Cantina Ruby---------"

loop do

	#Menu Cantina
	puts "1 - Estoque"
	puts "2 - Vendas"
	puts "3 - Entregas"
	puts "4 - Sair"
	
	main_menu_code = gets.to_i
	system "clear" or system "cls"
	break if main_menu_code == EXIT

	#Menu Estoque
	if main_menu_code == STOCK
		
		loop do
			puts "1 - Cadastro de Produtos"
			puts "2 - Controle de Estoque"
			puts "4 - Voltar"
			subMenu_code = gets.to_i
			system "clear" or system "cls"
			break if subMenu_code == EXIT

			if subMenu_code+10 == REGISTER_PRODUCT
				#Realizar a chamada construtor de Product para realizar a inclusão de um novo produto no sistema

				system "clear" or system "cls"
				puts "Registro de produtos"

				puts "Nome do produto: "
				name = gets.chomp
				puts "Preço do produto"
				value = gets.chomp

				#chamada da função

				puts "#{name} adicionado a Cantina"
				puts "Pressione enter ..."
				gets()
			end

			if subMenu_code+10 == STOCK_CONTROL
				#Exibir uma lista com as informações dos produtos cadastrados (Nome, preço, quantidade em estoque)

				#Oferecer opções de alterar essas informações (Alteração de nome, mudança de preço, compra de produtos etc)

				puts "Controle de Estoque"
				puts "Pressione enter ..."
				gets()
			end
		end


	end

	#Menu Vendas
	if main_menu_code == SALES
		
		loop do
			puts "1 - Fazer Pedido"
			puts "2 - Alterar Pedido"
			puts "3 - Cancelar Pedido"
			puts "4 - Voltar"
			subMenu_code = gets.to_i
			system "clear" or system "cls"
			break if subMenu_code == EXIT

			if subMenu_code+20 == NEW_ORDER
				#Iniciar uma nova instancia da classe Order, com um conjunto de Products, criar um ID desse pedido e setar o status do pedido para "aberto"


				puts "Novo pedido"
				puts "Pressione enter ..."
				gets()
			end

			#Juntar as opções de editar e cancelar?

			if subMenu_code+20 == EDIT_ORDER
				#Listar os pedidos em aberto e permitir mudanças dentro desse pedido, desde que esse pedido ainda não tenha sido aceito pela cozinha.

				puts "Alterar pedido"
				puts "Pressione enter ..."
				gets()
			end

			if subMenu_code+20 == CANCEL_ORDER
				#Listar os pedidos em aberto, e fornecer a opção de cancelar esse pedido.

				puts "Cancelar pedido"
				puts "Pressione enter ..."
				gets()
			end
		end
	end

	#Menu Entregas
	if main_menu_code == DELIVERY
		
		loop do

			puts "1 - Listar pedidos não entregues"
			puts "2 - Entregar pedido"
			puts "4 - Voltar"
			subMenu_code = gets.to_i
			system "clear" or system "cls"
			break if subMenu_code == EXIT

			if subMenu_code+30 == LIST_ORDERS
				puts "Listar pedidos"
				puts "Pressione enter ..."
				gets()
			end

			if subMenu_code+30 == DELIVERY_ORDER
				puts "Entregar pedido"
				puts "Pressione enter ..."
				gets()
			end
		end
	end
end
	
	