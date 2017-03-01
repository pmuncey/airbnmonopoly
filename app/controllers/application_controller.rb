class ApplicationController < ActionController::Base
  before_action :authenticate_investor!

  protect_from_forgery with: :exception
end
