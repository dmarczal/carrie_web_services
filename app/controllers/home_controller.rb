class HomeController < ApplicationController

  before_filter :authenticate_user!, :except => :index

  def index
    if can? :read, :mistakes
      @mistakes = Mistake.last 10
    end
  end

  def fractal
    params[:proxy] = params[:proxy] ? params[:proxy] : ""
    params[:env] = Rails.env.production? ? "/matematica" : ""
  end

  def problem_solve
  end

end
