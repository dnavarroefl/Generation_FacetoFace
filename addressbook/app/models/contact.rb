class Contact < ActiveRecord::Base
	has_many :contacts

	#validates :name, :address, :phonenumber, :email, presence: true
	#validates :phonenumber, numericality: true
	#validates :email, format: {with: /\A\w[a-zAZ09]/} 
end
