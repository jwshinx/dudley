class ApplicationController < ActionController::Base
  protect_from_forgery
  def logger_start
   logger.debug "===> #{params[:controller]}:#{params[:action]} <===================="
  end

end
