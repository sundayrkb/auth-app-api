class ApplicationController < ActionController::Base
  # skip the rules of csrf token for api
  # skip_before_action :verify_authentcitiy_token
  skip_before_action :verify_authenticity_token
end
