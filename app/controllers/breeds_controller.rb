class BreedsController < ApplicationController
  # GET /
  # GET /breeds
  def index
    @breeds = Breed.order(:name)
    session[:visit_count] ||= 0
    session[:visit_count] += 1
    @visit_count = session[:visit_count]
  end

  # GET /breeds/:id
  def show
    @breed = Breed.find(params[:id])
  end
end
