class Address < ActiveRecord::Base
	has many :contacts
	validates :name, :address, :phonenumber, :email, presence: true
end

def self.find id
	    where(id: id).first
	end 
end


