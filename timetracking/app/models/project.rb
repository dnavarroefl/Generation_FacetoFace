class Project < ActiveRecord::Base
	has_many :entries

	validates :name, uniqueness: true, presence: true, length: {maximum: 30}, format: {with: /A[a-zAZ0-9]+\s\w/ } 

	def self.iron_find id
	    where(id: id).first
	end 

	def self.last_created_projects n
		@projects = Project.order(created_at: :desc).limit(n)	
	end 

	def self.clean_old 
		one_week_ago = Date.today - 1.week 
		projects = Project.where("created_at < ?",one_week_ago)
		projects.destroy_all
	end 
end
