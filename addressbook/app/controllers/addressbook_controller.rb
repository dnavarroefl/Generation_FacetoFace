class AddressbookController < ApplicationController
	def index 
		render 'index'
	end 

	def edit 
		@addressbook = Addressbook.find params[:addressbook_id]
	end 

	def show 
		@addressbook = Contact.find params[:contact_id]
	end

	def new
		@addressbook = Addressbook.find params[:addressbook_id]
		@contact = @addressbook.contacts.new
	end 

	def create 
		@addressbook = Addressbook.new addressbook_params
		@addressbook.save
		redirect_to 'new'
	end 
	

	def destroy
		@addressbook = Addressbook.find params[:addressbook_id]
		@addressbook.find params[:id]
		@addressbook.destroy
		redirect_to addressbook_path(@addressbook)
	end 
	
	private 
	def addressbook_params
		params.require(:contact).permit(:name, :address, :phonenumber, :email)
	end
end 