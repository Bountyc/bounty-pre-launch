class AdminController < ApplicationController
  def index
  	if params[:password] == "Bountyporn0!"
  		@emails = Email.all
  	else
  		redirect_to action: :login
  	end
  end

  def login
  end
end
