class ListingsController < ApplicationController
  
  def new
    @listing = Listing.new
    @listing.landlords.build
  end
  
  def create
    @listing = Listing.new(params[:listing])
    if @listing.save
      flash[:success] = "Listing created"
      redirect_to root_path
    else
      render 'new'
    end
  end
end