class ShowsController < ApplicationController
  before_action :set_show, only: [:show, :get_notified, :edit, :update, :destroy]

  respond_to :html

  layout "get_notified", only: [:get_notified]

  def index
    @shows = Show.all
    respond_with(@shows)
  end

  def show
    respond_with(@show)
  end

  def new
    @show = Show.new
    respond_with(@show)
  end

  def edit
  end

  def create
    @show = Show.new(show_params)
    flash[:notice] = 'Show was successfully created.' if @show.save
    respond_with(@show)
  end

  def update
    flash[:notice] = 'Show was successfully updated.' if @show.update(show_params)
    respond_with(@show)
  end

  def destroy
    @show.destroy
    respond_with(@show)
  end

  def get_notified
    respond_with(@show)
  end

  private
    def set_show
      @show = Show.find(params[:id])
    end

    def show_params
      params.require(:show).permit(:name, :theater, :address, :price, :show_time, :description)
    end
end
