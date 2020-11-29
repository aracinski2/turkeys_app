class TurkeysController < ApplicationController
  def index
    @turkeys = Turkey.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def show
    @turkey = Turkey.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def create
    @turkey = Turkey.create(
      name: params[:name], 
      weight: params[:weight],
      size: params[:size],
      gobbles: params[:gobbles],
    )
    # render 'show.html.erb'
    redirect_to "/turkeys/#{@turkey.id}"
  end
end
