require_relative 'Product.rb'

#Array de produtos
#Código
	#Código único
#Valor
#Status
	#Pedido feito - Pedido realizado, mas ainda não chegou a cozinha da cantina
	#Pedido aceito - Pedidos que entraram na cozinha. Sendo preparados
	#Pedido pronto - Pedido já preparado pela cozinha, mas ainda não entregue ao cliente
	#Pedido entregue - Pedido entregue ao cliente

	attr_reader :id
	attr_accessor :value :status :arr_products


def initialize()
	
end

#Método para listar todos os pedidos existentes
	def list_orders
	end

	#Método para listar pedidos com status 'feito' existentes // Melhorar nome dessa função
	def list_orders_1
	end

	#Método para listar pedidos com status 'aceito' existentes // Melhorar nome dessa função
	def list_orders_2
	end

	#Método para listar pedidos com status 'pronto' existentes // Melhorar nome dessa função
	def list_orders_3
	end

	#Método para listar pedidos com status 'entregue' existentes // Melhorar nome dessa função
	def list_orders_4
	end
