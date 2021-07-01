module SessionsHelper
  def admin?
    current_user.try(:admin?)
  end

  def current_user_has_permission_to(controller, action)
    current_user.nil? ? false : current_user.has_permission_to(controller, action)
  end
end
