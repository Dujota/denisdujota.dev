module SessionsHelper
  def admin?
    current_user.try(:admin?)
  end
end
