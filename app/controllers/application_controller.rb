#encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => "Você não está autorizado a acessar esta página" #exception.message
  end

  def searchable(kclass)
    @search = kclass.search do |sunspot|
      sunspot.fulltext params[:search]
      facet_by :user_email, sunspot
      facet_by :exercise, sunspot
      sunspot.paginate :page => params[:page], :per_page => 15
    end
    @search
  end

  private
  def facet_by(_facet, sunspot)
    if params[_facet]
      facet_filter =
        sunspot.with _facet, params[_facet]
    end
    sunspot.facet _facet, :exclude => facet_filter
  end
end
