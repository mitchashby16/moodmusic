class Api::V1::CalmsController < ApplicationController
  respond_to :json

  def index
    respond_with Calm.all
  end

  def show
    respond_with Calm.find_by(song: params[:data])
  end

  def destroy
    song = Calm.find_by(song: params[:data])
    respond_with song.destroy
  end
end
