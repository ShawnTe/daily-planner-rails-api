class ContainersController < ApplicationController
  def index
    containers = Container.all
    render json: containers
  end
end
