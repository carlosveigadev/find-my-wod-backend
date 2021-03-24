class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler
  skip_before_action :verify_authenticity_token
end
