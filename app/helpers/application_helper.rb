module ApplicationHelper
  def enable_logrocket?
    in_production = (Rails.env.production? && ENV["DEPLOYMENT_MODE"] == "PRODUCTION")

    enable = in_production || force_logrocket?

    enable
  end

  def force_logrocket?
    ENV["FORCE_LOGROCKET"] == "true"
  end
end
