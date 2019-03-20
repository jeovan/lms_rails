class ApplicationController < ActionController::Base
  before_action :authenticate_usuario!
  alias_method :current_user, :current_usuario
  # load_and_authorize_resource
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to '/', :alert => exception.message
  end

end
