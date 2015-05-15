class ContactsController < ApplicationController

	def addressbook
		@contacts = Contact.all
	end 

	def index  
		@contacts = Contact.all
	end 

	def home
		@contacts = Contact.all
	end 

	def contacts
		params.require(:contact).permit(:name, :address, :phonenumber, :email)
	end 

	def show
		@contacts = Contact.find params[:id]
	end

	def contacts_params
		params.require(:contact).permit(:name, :address, :phonenumber, :email)
	end
end 

