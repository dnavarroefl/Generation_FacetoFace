class ItemsController < ApplicationController
	def home 
		render 'home'
	end 

	def new
		@items = Items.find params[:id]
	end 

	def show 
		@items = Items.find params[:id]
	end 
end
