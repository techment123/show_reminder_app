class ShowsController < ApplicationController

  def index
    @shows = Show.all
  end

  def new
    @show = Show.new
    @channels = Channel.all
  end

  def create
    @show = Show.new(show_params)
    if @show.save
      redirect_to @show
    else
      render 'new'
    end
  end

  def show
    @show = Show.find_by(id: params[:id])
  end

  def search
    if params[:search].blank?
    redirect_to('index', alert: "Empty field!") and return
    else
      @results = Show.getSearchedShows(params[:search].downcase)
    end
  end

  private

  def show_params
    params.require(:show).permit(:title, :favorite, :channel_id)
  end
end
