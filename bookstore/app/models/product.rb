class Product < ActiveRecord::Base
	belongs_to :bookstore

	def self.search(search, id)
 		if search
   			where(['name LIKE ?', "%#{search}%"])
 		else
 	 		scoped
 		end
 	end 
 end 


