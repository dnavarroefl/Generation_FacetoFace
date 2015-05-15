class Shortener < ActiveRecord::Base
	has many :urls

	def self.most_recent_urls n
		@urls = Shortener.order(created_at: :desc).limit(n)	
	end 
end
