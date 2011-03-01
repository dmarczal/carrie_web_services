class HomeController < ApplicationController
  
  before_filter :authenticate_user!, :except => :home

  def index
  end

  def fractal
    #@fractal = "<applet code='org.c3sl.ufpr.br.main.Fractal.class' mayscript='mayscript' width='710' height='540'> <param name='archive' value='/fractal/jars/fractal.jar, /fractal/jars/mysql-connector-java-5.0.8-bin.jar, /fractal/jars/balloontip-1.1.1.jar, /fractal/jars/db4o-7.12.156.14667-all-java5.jar' > </applet>"; 
  end

end
