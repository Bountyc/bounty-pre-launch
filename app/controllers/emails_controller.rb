class EmailsController < ApplicationController
  def create
    @email = Email.new(email_params)
    if @email.save
      redirect_to root_url
    else
      render "home/index"
    end
  end
  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def email_params
      params.require(:email).permit(:email)
    end
end
