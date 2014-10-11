require 'mailchimp'
 
class ApplicationController < ActionController::Base
 
# Prevent CSRF attacks by raising an exception.
# For APIs, you may want to use :null_session instead.
 
protect_from_forgery with: :exception

def home 

end
  
 
before_action :setup_mcapi
 
  def setup_mcapi
    @mc = Mailchimp::API.new('29f11b9e329bbb17ae91b77c794ce5b5-us9')
    @list_id = "964a273b37"
  end




end
