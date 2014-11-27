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
			flash[:notice] = "User created successfully"
			redirect_to user_path(@user.id)
		else
			flash[:alert] = "Something went wrong :("
			render 'new'
		end
	end

	def show
		@user = User.find params[:id]
	end

	def edit
		@user = User.find params[:id]
	end

	def update
		@user = User.find params[:id]

		if @user.update_attributes user_params
			redirect_to action: :show, controller: :users, id: @user.id
		else
			render 'user'
		end
	end

	def destroy
		@user = User.find params[:id]

		if @user.destroy
			redirect_to action: 'index'
		else
			redirect_to :back
		end
	end

	private

	def user_params
		params.require(:user).permit(:name,:email,:avatar)
	end

end