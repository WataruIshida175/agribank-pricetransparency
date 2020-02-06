class ChemicalsController < ApplicationController
  def index
    @chemicals = Chemical.all
    # @chemicals = Chemical.find_by(how_to_use: "殺虫剤")
    # @chemicals = Chemical.where(how_to_use: params[:sort])
  end 
  
  def show 
    @chemical = Chemical.find(params[:id])
  end 
end
