module Api
  module V1
    class RegistrationsController < ApplicationController
      def create
        check_user = User.find_by(email: params['user']['email'])
        if check_user.present?
            render json: { message: 'User Exist'}
            return
        end
        user = User.create!(
          name: params['user']['name'],
          email: params['user']['email'],
          role: params['user']['role'],
          password: params['user']['password'],
          password_confirmation: params['user']['password_confirmation']
        ) if params['user'].present?

        if user
          session[:user_id] = user.id
          render json: {
            status: :created,
            user: user
          }
        elsif params['user'].nil?
          render json: {
            message: 'Please pass name|email|password|password_confirmation json
            {"user":{"name": "name", "email": "email@email.com", "role": "Doctor|Patient|Admin" "password": "0123456789@a","password_confirmation": "0123456789@a"}}'
          }
        else
          render json: { status: 500 }
        end
      end
    end
  end
end
