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




puts "---Cantina Ruby---"

loop do

	#Menu Cantina
	puts "1 - Estoque"
	puts "2 - Vendas"
	puts "3 - Entregas"
	puts "4 - Sair"
	
	main_menu_code = gets.to_i	
	break if main_menu_code == EXIT

	#Menu Estoque
	if main_menu_code == STOCK
		

		puts "1 - Cadastro de Produtos"
		puts "2 - Controle de Estoque"
		puts "3 - Voltar"
		subMenu_code = gets.to_i
		break if main_menu_code == EXIT

		if subMenu_code == REGISTER_PRODUCT
			
		end

		if subMenu_code == STOCK_CONTROL
			
		end


	end

	#Menu Vendas
	if main_menu_code == SALES
		
		puts "1 - Fazer Pedido"
		puts "2 - Alterar Pedido"
		puts "3 - Cancelar Pedido"
		puts "4 - Voltar"
		subMenu_code = gets.to_i
		break if main_menu_code == EXIT

		if subMenu_code == NEW_ORDER
			
		end

		if subMenu_code == EDIT_ORDER
			
		end

		if subMenu_code == CANCEL_ORDER
			
		end
	end

	#Menu Entregas
	if main_menu_code == DELIVERY
		

		puts "1 - Listar pedidos não entregues"
		puts "2 - Entregar pedido"
		puts "3 - Voltar"
		subMenu_code = gets.to_i
		break if main_menu_code == EXIT

		if subMenu_code == LIST_ORDERS
			
		end

		if subMenu_code == DELIVERY_ORDER
			
		end
	end
end
	
	