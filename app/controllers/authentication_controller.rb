class AuthenticationController < ApplicationController
  # return auth token once user is authenticated
  def create
    auth_token = AuthenticateUser.new(auth_params[:email], auth_params[:password]).call

    json_response(auth_token: auth_token)
  end

  private

  def auth_params
    params.require(:authentication).permit(:email, :password)
  end
end
