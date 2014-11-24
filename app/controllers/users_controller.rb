class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new user_params

		if @user.save
			flash[:notice] = "Entry created successfully"
			redirect_to action: :show, controller: :users
		else
			flash[:alert] = "Something went wrong :("
			render 'new'
		end
	end

	private

	def user_params
		params.require(:user).permit(:name,:email,:num_rooms,:num_baths,:pet,:price,:photo)
	end
end


	# class EntriesController < ApplicationController

	# 	def show
	# 		@project = current_user.projects.find params[:project_id]
	# 		@entry = @project.entries.find params[:id]
	# 	end


	# 	end

	# 	def edit
	# 		@project = current_user.projects.find params[:project_id]
	# 		@entry = @project.entries.find params[:id]
	# 	end

	# 	def update
	# 		@project = current_user.projects.find params[:project_id]
	# 		@entry = @project.entries.find params[:id]

	# 		if @entry.update_attributes entry_params
	# 			redirect_to action: :show, controller: :entries, project_id: @project.id, id: @entry.id
	# 		else
	# 			render 'entry'
	# 		end
	# 	end

	# 	def destroy
	# 		@project = current_user.projects.find params[:project_id]
	# 		@entry = @project.entries.find params[:id]

	# 		if @entry.destroy
	# 			redirect_to action: 'index'
	# 		else
	# 			redirect_to :back
	# 		end
	# 	end

	# 	private

	# 	def project
	# 		@project ||= current_user.projects.find params[:project_id]
	# 	end

	# 	def entry_params
	# 		params.require(:entry).permit(:hours, :minutes, :date)
	# 	end

	# end
