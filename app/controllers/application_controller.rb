class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_action :set_query

  def set_query
     @query =  Book.ransack(params[:q])
  end
end
