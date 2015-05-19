class Contact < ActiveRecord::Base
	belongs_to :addressbook
	validates :name, :address, :phonenumber, :email, presence: true
	validates :phonenumber, numericality: true
	validates :email, format: {with: /\A[a-zAZ0-9]+\s\w/ } 
end