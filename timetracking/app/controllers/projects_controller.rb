class ProjectsController < ApplicationController

		def index
			@projects = Project.order('created_at DESC').limit(10)	
			render 'index'
		end  

		def show
			begin 
				@projects = Project.find params[:id]
			rescue ActiveRecord::RecordNotFound
				render 'no_projects_found', layout: 'admin'
			end
		end 
=begin 	 	
def total_hours month, year 
			all_entries = self.entries
			all_selected_entries = all_entries.select do |entry|
			entry.date.month == month && entry.date.years == year  
		end 
		all_selected_entries.reduce(0) {|sum, entry| sum+entry.hours}
		end
=end 
		def new 
			@project = Project.new
		end 

		def create 
			@project = Project.new project_params
			if @project.save 
				redirect_to @project
			else 
				render 'new'
			end 
		end 

		private 
		def project_params
			params.require(:project).permit(:name, :description)
		end 
	end 
 

