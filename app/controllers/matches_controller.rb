class MatchesController < ApplicationController

  def choose_search_parameters

  end

  def perform_search
    # see how many search parameters are filled

    # filter
    @results = Room.all

    if params[:num_rooms]
      @results = @results.where(num_rooms: params[:num_rooms])
    end
    if params[:num_baths]
      @results = @results.where(num_baths: params[:num_baths])
    end
    if params[:price]
      @results = @results.where(price: params[:price])
    end
    if params[:pet]
      @results = @results.where(pet: params[:pet])
    end
    if params[:area]
      @results = @results.where(area: params[:area])
    end

    # for each result shown calculate its percentage
    render 'show'
  end

  def show
  end

end
