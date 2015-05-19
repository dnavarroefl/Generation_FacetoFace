class BookstoresController < ApplicationController

		def index 
			@products = Product.order('created_at DESC').limit(10)	
			render 'index'
		end 
		
		def search_products
			@products = Product.search(params[:search], params[:id])
		end 

		def show 
			@products = Product.find params[:id]
		end 

		def edit 
			@products = Product.find params[:id]
		end 

		def create
			@products = Product.find params[:id]
		end 
	end 
 

