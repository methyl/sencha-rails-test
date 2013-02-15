class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :prepare_for_mobile

  private

  def mobile_device?
    if session[:mobile_param]
      session[:mobile_param] == "true"
    else
      request.user_agent =~ /Mobile|webOS/
    end
  end
  helper_method :mobile_device?

  def prepare_for_mobile
    session[:mobile_param] = params[:mobile] if params[:mobile]
    if mobile_device?
      render "sencha/index.html.erb", :layout => "sencha"
    end
  end
end
