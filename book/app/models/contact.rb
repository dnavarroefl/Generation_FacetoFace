class Contact < ActiveRecord::Base
	belongs to :book
	
	def self.most_recent_contacts n
		@contacts = Contact.order(created_at: :desc).limit(n)	
	end 
end
