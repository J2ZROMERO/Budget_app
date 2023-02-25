class ApplicationController < ActionController::Base
    before_action :authenticate_user!
  before_action :set_current_user, if: :user_signed_in?

  def after_sign_in_path_for(resource)
    # Define la ruta a la que quieras redirigir al usuario después de iniciar sesión
    # Por ejemplo, si quieres redirigirlo a la ruta raíz de tu aplicación:
    groups_path
  end
  private

  def set_current_user
    @current_user = current_user
  end
end
