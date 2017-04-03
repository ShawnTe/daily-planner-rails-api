class ContainersController < ApplicationController
  before_action :set_container, only: [:show, :update, :destroy]

  def index
    @containers = Container.all
    json_response(@containers)
  end

  def create
    @container = Container.create!(container_params)
    json_response(@container, :created)
  end

  def show
    json_response(@container)
  end

  def update
    @container.update(container_params)
    head :no_content
  end

  def destroy
    @container.destroy
    head :no_content
  end

  private

    def container_params
      params.permit(:status, :time_container, :date, :brainjuice_id)
    end

    def set_container
      @container = Container.find(params[:id])
    end

end
