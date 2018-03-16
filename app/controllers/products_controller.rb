class ProductsController < ApplicationController

	def index
       @Products = Product.all 
	end

	
end
