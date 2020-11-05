class ParksController < ApplicationController

  def index 
    name = params[:name]
    @parks = Park.search(name).order(:name).page(params[:page])
    json_response(@parks)
  end

  def show
    @park = Park.find(params[:id])
    json_response(@park)
  end

  def create
    @park = Park.create!(park_params)
    json_response(@park, :created)
  end

  def random
    @park = Park.all.sample
    json_response(@park)
  end

  def update
    @park = Park.find(params[:id])
    if @park.update!(park_params)
      render status: 200, json: {
     message: "Park details have been updated successfully."
     }
    end
  end

  def destroy
    @park = Park.find(params[:id])
    if @park.destroy
      render status: 200, json: {
        message: "delete sucessful"
      }
    end
  end

  private

  def park_params
    params.permit(:name, :state)
  end

end