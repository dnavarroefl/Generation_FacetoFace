class ContactsController < ApplicationController
	def home
		@contact = Contact.find params[:contact_id]
	end 

	def book
		@contacts = Contact.all
	end 

	def index  
		@contacts = Contact.all
	end 

	def create 
			@contact = Contact.new project_params
			if @contact.save 
				redirect_to @contact
			else 
				render 'new'
			end 
		end 

	def show
		@contacts = Contact.find params[:id]
	end

	def edit
		@contacts = Contact.find params[:id]
	end 

	def generate_alphabet
		@contacts.each do |letter|
			letter = ['A..Z']
		end 
	end 

	def contacts
		params.require(:contact).permit(:name, :address, :phonenumber, :email)
	end 
	
	private 
	def contact_params
		params.require(:contact).permit(:name, :address, :phonenumber, :email)
	end
end 