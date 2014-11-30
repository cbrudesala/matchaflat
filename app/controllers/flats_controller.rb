class FlatsController < ApplicationController
	def index
		@flats = Flat.all
	end

	def new
		@flat = Flat.new
		render :layout => 'form'
	end

	def create
		@flat = Flat.new flat_params

		if @flat.save
			flash[:notice] = "Flat created successfully"
			redirect_to flat_path(@flat.id)
		else
			flash[:alert] = "Something went wrong :("
			render 'new'
		end
	end

	def show
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
			redirect_to action: 'index'
		else
			redirect_to :back
		end
	end

	private

	def flat_params
		params.require(:flat).permit(:num_rooms,:num_baths,:pet,:address)
	end
end
