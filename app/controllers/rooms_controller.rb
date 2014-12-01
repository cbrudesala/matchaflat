class RoomsController < ApplicationController
	def index
		@rooms = Room.all
	end

	def new
		@room = Room.new
		render :layout => 'form'
	end

	def create
		@room = Room.new room_params

		if @room.save
			flash[:notice] = "room created successfully"
			redirect_to room_path(@room.id)
		else
			flash[:alert] = "Something went wrong :("
			render 'new'
		end
	end

	def show
		@room = Room.find params[:id]
		render :layout => 'form'
	end

	def edit
		@room = Room.find params[:id]
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
		params.require(:room).permit(:room_photo,:min_price,:max_price,:flat_id)
	end
end
