class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :gender, :mobile_no, :city, :password])
    end
    def after_sign_in_path_for(users)
        if current_user.has_role? :super_admin
            super_admin_path
        elsif current_user.has_role? :admin
            admin_path
           
        else
            member_path
            
        end
        # super_admin_path
    #    format.html { redirect_to user_path, notice: 'User was successfully created.' }
        # render json: @user
        
    end
end
