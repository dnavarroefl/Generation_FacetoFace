class Address < ActiveRecord::Base
	belongs_to :addressbook
	validates :name, :address, presence: true
end
end
