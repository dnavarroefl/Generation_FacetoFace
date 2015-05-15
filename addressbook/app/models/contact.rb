class Contact < ActiveRecord::Base
	belongs_to :addressbook
	validates :name, :address, :phonenumber, :email, presence: true
end
