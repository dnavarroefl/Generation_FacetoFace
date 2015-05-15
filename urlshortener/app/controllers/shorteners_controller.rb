class ShortenersController < ApplicationController
	def index
		@urls = Shortener.all
	end 

	def redirect_urls  
	end 

	def show
		@url = Shortener.find(params[:id])
		@url.visits += 1
		@url.save
		rescue ActiveRecord::RecordNotFound
			render 'oh_my_week_page'
		end

	def add_new_url
		@url = Shortener.new(url_params)
		@url.save
		redirect_to @url
	end 

=begin
	private 
		def url_params
			params.require(:url).permit(:url_id, :url, :visits)
		end
=end
end
