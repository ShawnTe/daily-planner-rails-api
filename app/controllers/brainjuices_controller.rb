class BrainjuicesController < ApplicationController
  before_action :set_brainjuice, only: [:show, :update, :destroy]

  def index
    @brainjuices = Brainjuice.all
    json_response(@brainjuices)
  end

  def create
    @brainjuice = Brainjuice.create!(brainjuice_params)
    json_response(@brainjuice, :created)
  end

  def show
    json_response(@brainjuice)
  end

  def update
    @brainjuice.update(brainjuice_params)
    head :no_content
  end

  def destroy
    @brainjuice.destroy
    head :no_content
  end

  private

  def brainjuice_params
    params.permit(:name, :status)
  end

  def set_brainjuice
    @brainjuice = Brainjuice.find(params[:id])
  end

end
