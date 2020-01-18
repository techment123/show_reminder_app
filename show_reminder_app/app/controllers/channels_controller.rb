class ChannelsController < ApplicationController

  def index
    @channels = Channel.all
  end

  def new
    @channel = Channel.new
  end

  def create
    @channel = Channel.new(channel_params)
    if @channel.save
      redirect_to @channel
    else
      render 'new'
    end
  end

  def show
    @channel = Channel.find_by(id: params[:id])
  end

  private

  def channel_params
    params.require(:channel).permit(:title, :favorite)
  end
end
