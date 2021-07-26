module Api
  module V1
    class SessionsController < ApplicationController
      include CurrentUserConcern
      def create
        user = User.find_by(email: params["user"]["email"]).try(:authenticate, params["user"]["password"])
        if user
          session[:user_id] = user.id
          render json: {
            status: :created,
            logged_in: true,
            user: user,
            message: "Session"
          }
        else
          render json: { status: 401}
        end
      end

      def logged_in
        if @role_status
          render json: {
            logged_in: true,
            name: @current_user.name,
            role: @current_user.role,
            patient_count: @patient_count,
            doctor_count: @doctor_count,
            users_list: @users_list
          }
        elsif !@role_status
          logout
        else
          render json: {
            logged_in: false
          }
        end
      end

      def logout
        reset_session
          render json: { status: 200, logged_out: true }
      end
    end
  end
end
