class InquiriesController < ApplicationController
  invisible_captcha only: [:create]
  skip_before_action :verify_authenticity_token
  load_and_authorize_resource

  def create
    respond_to do |format|
      if @inquiry.save
        CustomerMailer.with(inquiry: @inquiry).inquiry_submitted.deliver_now
        AdminMailer.with(inquiry: @inquiry).customer_inquiry.deliver_now

        format.html { redirect_to root_path, notice: "Message sent. Thanks for reaching out! " }
      else
        format.html { redirect_to root_path(errors: @inquiry.errors.full_messages), notice: "Oops something went wrong! Please double check the contact form and try again?" }
      end
    end
  end

  private

  def inquiry_params
    # params.require(:inquiry).permit(:name, :message, :email)
    params.permit(:name, :message, :email)
  end
end
