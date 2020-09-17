class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_paramns
    params.require(:usuario).permit(:name, :username, :email, :password, :password_confirmation)
  end

  def account_update_paramns
    params.require(:usuario).permit(:name, :username, :email, :password, :password_confirmation, :current_password)
  end
end
