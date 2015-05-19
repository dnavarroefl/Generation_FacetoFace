class ProjectsController < ApplicationController

	def index
			@projects = Project.order('created_at DESC').limit(10)	
			render 'index'
	end  

	def edit 
		@project = Project.find params[:project_id]
	end 

	def show
		begin 
				@projects = Project.find params[:id]
		
		rescue ActiveRecord::RecordNotFound

				render 'no_projects_found', layout: 'admin'
		end
	end 
 
	def new 
			@project = Project.new
	end 

	def create 	
		@project = Project.new project_params
		@project.save 
		redirect_to 'new'
		end 
	end 

	def flash_message
		display_message[:alert] || display_message[:notice]
	end 

	def destroy 
		@project = Project.find params[:project_id]
		@project.find params[:id]
		@project.destroy 
		redirect_to project_path(@project)
	end  

	private 

	def display_message
		if flash[type]
			display_message :div, class: type 
			content_tag do 
			flash[type]
	end
	 
	def project_params
		params.require(:project).permit(:name, :description)
	end 
end  
end 