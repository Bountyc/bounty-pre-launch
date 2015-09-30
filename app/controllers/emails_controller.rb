class EmailsController < ApplicationController
  def create

    @email = Email.new
    @email.email = params[:email]
    if @email.save
      render json: {status: "success"}
    else
      render json: @email.errors.full_messages.join(", ")
    end
  end

end
