class HomeController < ApplicationController
  def index
    @inquiry = Inquiry.new
  end

end
