class TurkeysController < ApplicationController
  def index
    @turkeys = Turkey.all
    render 'index.html.erb'
  end
end
