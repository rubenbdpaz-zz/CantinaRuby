require_relative 'Product'
require_relative 'Order'

#Metodos
def main_menu
	system "clear" or system "cls"
	puts "-------Cantina Ruby---------"
	puts "1 - Estoque"
	puts "2 - Vendas"
	puts "3 - Entregas"
	puts "4 - Sair"
end

def main_menu_stock
	system "clear" or system "cls"
	puts "1 - Cadastro de Produtos"
	puts "2 - Controle de Estoque"
	puts "4 - Voltar"
end

def main_menu_sales
	system "clear" or system "cls"
	puts "1 - Fazer Pedido"
	puts "2 - Alterar Pedido"
	puts "3 - Cancelar Pedido"
	puts "4 - Voltar"
end

def main_menu_deliver
	system "clear" or system "cls"
	puts "1 - Listar pedidos não entregues"
	puts "2 - Entregar pedido"
	puts "4 - Voltar"
end


def register_product
	system "clear" or system "cls"
		puts "-------Registro de produtos-------"
		puts "Nome do produto: "
		name = gets.chomp
		puts "Preço do produto"
		value = gets.chomp

		product = Product.new(name, value)

		puts "#{name} adicionado a Cantina"
		puts "Pressione enter ..."
		gets()

		return product
end

def show_products
	puts "Código | Nome do produto | Preço | Quantidade"
	$products_list.each do |id, product| 
		puts "#{id} | #{product.name} | R$#{product.price} | #{product.stock_quantity}"
	end
end

def register_order
	system "clear" or system "cls"
	puts "-------Novo Pedido-------"
	order = Order.new()
	show_products
	loop do
		puts "Digite o código do produto a ser adicionado ao pedido. (0 para fechar o pedido)"
		new_order_code = gets.chomp.to_i
		break if new_order_code == 0
		puts "Digite a quantidade"
		new_order_quantity = gets.chomp.to_i
		if new_order_quantity != 0
			order.add_product($products_list[new_order_code],new_order_quantity)
			puts "Produto adicionado com sucesso!"			
		end
	end
	return order
end


#Constants
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


#Main
$products_list = Hash.new()
$id_products = 1
$order_list = Hash.new()
$id_orders = 1

loop do

	#Menu Cantina
	main_menu
	main_menu_code = gets.to_i
	break if main_menu_code == EXIT

	#Menu Estoque
	if main_menu_code == STOCK
		
		loop do
			main_menu_stock
			subMenu_code = gets.to_i
			break if subMenu_code == EXIT

			if subMenu_code+10 == REGISTER_PRODUCT
				$products_list[$id_products] = register_product
				$id_products += 1

			end
				

			if subMenu_code+10 == STOCK_CONTROL
				puts "-------Controle de Estoque-------"
				#Exibir uma lista com as informações dos produtos cadastrados (Nome, preço, quantidade em estoque)
				show_products
				#Oferecer opções de alterar essas informações (Alteração de nome, mudança de preço, compra de produtos etc)

				puts "Pressione enter ..."
				gets()
			end
		end
	end

	#Menu Vendas
	if main_menu_code == SALES
		
		loop do
			main_menu_sales
			subMenu_code = gets.to_i
			break if subMenu_code == EXIT

			if subMenu_code+20 == NEW_ORDER
				#Iniciar uma nova instancia da classe Order
					#Adicionar essa nova instancia numa Hash de Orders

				$order_list[$id_orders] = register_order
				$id_orders += 1
				
				#Listar produtos
					#Chamar show_products

				#Incluir produtos em Order
					#Pedir código do produto
					#Perguntar se vai adicionar mais algum pedido
				#Fechar a Order, mudando seu status
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
			main_menu_deliver
			subMenu_code = gets.to_i
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