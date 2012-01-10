class HomeController < ApplicationController

  def index
    redirect_to people_path
  end
  
end