class HomeController < ApplicationController
  
  before_filter :authenticate_user!, :except => :index

  def index
  end
  
  def fractal
    params[:proxy] = params[:proxy] ? params[:proxy] : ""
    params[:env] = Rails.env.production? ? "/simulators" : ""
  end

  def problem_solve
  end

end
