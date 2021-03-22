class SessionController < ApplicationController
  def create
    user = User.find_by(email: params["user"]["emails"]).try(:authenticate, params["user"]["password"])
  end
end
