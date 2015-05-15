class Phone < ActiveRecord::Base
	belongs_to :addressbook
	validates :name, :phonenumber, presence: true
end
