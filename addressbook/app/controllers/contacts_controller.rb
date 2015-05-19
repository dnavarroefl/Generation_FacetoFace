class ContactsController < ApplicationController

	def home 
		@contacts = Contact.all
	end 

	def index 
		@contacts = Contact.all
	end 

	def show 
		begin 
		@contact = Contact.find params[:contact_id]

		rescue ActiveRecord::RecordNotFound
			render 'contact_not_found', layout: 'nocontact'
	end

	def new
		@contact = Contact.find params[:contact_id]
	end 

	def edit 
		@contact = Contact.find params[:contact_id]
	end 

	def destroy
		@contact = Contact.find params[:contact_id]
		@contact.destroy
		redirect_to contacts_path
	end 

	def create 
			@contact = Contact.new contact_params[:contact_id]

			@contact.save 
			redirect_to contacts_path
	end 

	def update
		@contact = contact.find(params[:contact_id])

		if @contact.update_attributes contact_params
			flash[:notice] = "Contact updated successfully"
			redirect_to action: 'index'
		else
			flash.now[:errors] = @contact.errors.full_messages
			render 'edit'
		end 
	end
	
	private 
	def contact_params
		params.require(:contact).permit(:name, :address, :phonenumber, :email)
	end
end 
end 


