class HomeController < ApplicationController
  def index
  	@email = Email.new
  end
end
