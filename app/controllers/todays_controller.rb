class TodaysController < ApplicationController
  def index
    todays = Today.all
    render json: todays
  end
end
