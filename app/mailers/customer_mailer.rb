class CustomerMailer < ApplicationMailer
  default from: "denisdujota@gmail.com"

  def inquiry_submitted
    @inquiry = params[:inquiry]
    @email = @inquiry.email.downcase.strip
    mail to: @email, subject: "Thank you for reaching out!"
  end
end
