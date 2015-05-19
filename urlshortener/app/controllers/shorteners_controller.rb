class ShortenersController < ApplicationController

def index
	@urls = Shortener.all
end

def show 
	id = params[:id]
	@url=Shortener.find(id)
end 

def redirect_url
		begin
			@urlto = Shortener.find params[:id]
			@urlto.visit += 1
			@urlto.save
			redirect_to @urlto.url
		rescue ActiveRecord::RecordNotFound
			render 'oh_my_week_page'
		end
	end

def most_visited_pages
	@urls = Shortener.all
	@urls.visit.where()
	end
end