class RoomsController < ApplicationController
	def index
		@user_id = params[:user_id]
		@flat =  Flat.find params[:flat_id]
		@rooms = @flat.rooms
	end

	def new
		@room = Room.new
		@user =  User.find params[:user_id]
		@flat =  Flat.find params[:flat_id]
		render :layout => 'form'
	end

	def create
		@room = Room.new room_params
		user_id = params[:user_id]
		flat_id = params[:flat_id]

		if @room.save
			flash[:notice] = "room created successfully"
			redirect_to user_flat_rooms_path(user_id, flat_id)
		else
			flash[:alert] = "Something went wrong :("
			render 'new'
		end
	end

	def edit
		@room = Room.find params[:id]
		@user_id = params[:user_id]
		@flat_id = params[:flat_id]
	end

	def update
		@room = Room.find params[:id]

		if @room.update_attributes room_params
			redirect_to action: :show, controller: :rooms, id: @room.id
		else
			render 'room'
		end
	end

	def destroy
		@room = Room.find params[:id]

		if @room.destroy
			redirect_to action: 'index'
		else
			redirect_to :back
		end
	end

	private

	def room_params
		params.require(:room).permit(:room_photo,:price,:flat_id)
	end
end
