class Email < ActiveRecord::Base
	belongs_to :addressbook
	validates :name, :email, presence: true
end
