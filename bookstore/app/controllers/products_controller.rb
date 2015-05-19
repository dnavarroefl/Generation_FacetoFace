class ProductsController < ApplicationController

	def home 
		@products = Product.all
	end

	def index 
		@bookstore = Bookstore.find params[:id]
		@products = @bookstore.products
	end 

	def add_new_product
		@product = Product.find params[:id]
	end

	def edit
		@bookstore = Bookstore.find params[:id]
		@product = @bookstore.product.find params[:id] 
	end 

	def show
		@products = Product.find params[:id]
	end 

	def search
	end 
end
