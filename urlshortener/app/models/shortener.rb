class Shortener < ActiveRecord::Base
	has_many :urls

	def self.most_recent_pages n
		@shorteners = Shortener.order(created_at: :desc).limit(n)	
	end 
end
