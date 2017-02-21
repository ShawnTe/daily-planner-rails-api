class BrainjuicesController < ApplicationController
  def index
    brainjuices = Brainjuice.all
    render json: brainjuices
  end
end
