class UsersController < ApplicationController

  before_action :get_users_by_params, only: [:search]

  include CurrentUserConcern
  def search
    if @current_user.role == 'Admin'
      render json: {
      status: :searched,
      users: @user_search
      }
    else
      render json: { message: 'Admin only'}
    end
  end

  def destroy
    get_users_by_params
    if @current_user.role == 'Admin' && @user_search.present?
      User.destroy(@user_search.ids)
      render json: {
      status: :deleted
      }
    else
      render json: { message: 'Admin only'}
    end
  end

  private

  def get_users_by_params
    @user_search = User.where(["id = ? or email = ? or name = ?", params['user']['id'],params['user']['email'], params['user']['name']])
  end

end
