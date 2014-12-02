class FlatsController < ApplicationController
	def index
		@user =  User.find params[:user_id]
		@flat = @user.flat
		puts '='*50
		puts @flat
		puts '='*50
	end

	def new
		@flat = Flat.new
		@user =  User.find params[:user_id]
		render :layout => 'form'
	end

	def create
		@flat = Flat.new flat_params
		@user =  User.find params[:user_id]

		if @flat.save
			flash[:notice] = "Flat created successfully"
			redirect_to user_flat_path(@user.id, @flat.id)
		else
			flash[:alert] = "Something went wrong :("
			render 'new'
		end
	end

	def show
		@user =  User.find params[:user_id]
		@flat = Flat.find params[:id]
		render :layout => 'form'
	end

	def edit
		@flat = Flat.find params[:id]
	end

	def update
		@flat = Flat.find params[:id]

		if @flat.update_attributes flat_params
			redirect_to action: :show, controller: :flats, id: @flat.id
		else
			render 'flat'
		end
	end

	def destroy
		@flat = Flat.find params[:id]

		if @flat.destroy
			redirect_to action: :show, controller: :users, id: params[:user_id]
		else
			redirect_to :back
		end
	end

	private

	def flat_params
		params.require(:flat).permit(:num_rooms,:num_baths,:pet,:area,:flat_photo,:user_id)
	end
end
