class TurkeysController < ApplicationController
  def index
    @turkeys = Turkey.all
    render 'index.html.erb'
  end

  def show
    @turkey = Turkey.find_by(id: params[:id])
    render 'show.html.erb'
  end
end
