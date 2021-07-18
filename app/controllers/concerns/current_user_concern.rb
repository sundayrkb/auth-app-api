module CurrentUserConcern
  extend ActiveSupport::Concern

  included do
    before_action :set_current_user
  end

  $Role = ["Doctor", "Admin", "Patient"]

  def set_current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
      if @current_user.role.present?
        if @current_user.role == 'Admin'
          @users_list = User.where.not(role: 'Admin')
          @patient_count = User.where(role: ['Patient']).count
          @doctor_count = User.where(role: ['Doctor']).count
        elsif @current_user.role == 'Doctor'
          @users_list = User.where(role: ['Patient'])
        elsif @current_user.role == 'Patient'
          @users_list = User.where(role: ['Doctor'])
        else
          @users_list = 'Please contact admin for roles'
        end

        @role_status = $Role.include? @current_user.role
      end
    end
  end

  # def get_users_by_roles
  #   # if @current_user.present?
  #   #   @users_list =[]
  #   #   if  @current_user.role == 'Admin'
  #   #     @users_list = User.where(role: ['Doctor', 'Patient'])
  #   #   elsif @current_user.role == 'Doctor'
  #   #     @users_list = User.where(role: ['Doctor'])
  #   #   elsif @current_user.role == 'Patient'
  #   #     @users_list = User.where(role: ['Patient'])
  #   #   end
  #   # end
  # end
end
