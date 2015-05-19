class Book < ActiveRecord::Base
	has_many :products

	def self.newest_products n
		@products = Product.order(created_at: :desc).limit(n)	
	end
end

