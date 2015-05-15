class AddressbookController < ApplicationController
	def index
		@contacts = Contact.all
	end 

	def show_contacts 
		@contact = Contact.find params[:id]
	end

	def contacts_params
		params.require(:contact).permit(:name, :address, :phonenumber, :email)
	end
end
