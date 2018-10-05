class HomeController < ApplicationController
  def index
    Rails.logger.info '#######################################'
    Rails.logger.info params.inspect
    Rails.logger.info '#######################################'

    session[:times_here] ||= 0
    session[:times_here] += 1
  end
end
