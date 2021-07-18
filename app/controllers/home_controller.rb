class HomeController < ApplicationController
  def index
    render json: {status: "Your on Session Management"}
  end
end
