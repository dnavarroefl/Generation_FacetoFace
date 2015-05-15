class ContactsController < ApplicationController
	def book
		@contacts = Contact.all
	end 

	def index  
		@contacts = Contact.all
	end 

	def home
		@contacts = Contact.all
	end 

	def contacts
		params.require(:contact).permit(:name, :address, :phone, :email)
	end 

	def show
		@contact = Contact.find params[:id]
	end

	def contacts_params
		params.require(:contact).permit(:name, :address, :phone, :email)
	end
end
end
