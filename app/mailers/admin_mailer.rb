class AdminMailer < ApplicationMailer
  default from: "inquiry@denisdujota.dev"

  def customer_inquiry
    @inquiry = params[:inquiry]
    @email = @inquiry.email.downcase.strip
    mail to: @email, subject: "**INQUIRY** from #{@email}"
  end
end
