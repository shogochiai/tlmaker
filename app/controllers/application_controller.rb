class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :require_login
  skip_before_filter :require_login, only: [:index, :new, :create]
end
