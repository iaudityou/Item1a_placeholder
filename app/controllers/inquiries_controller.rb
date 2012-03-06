class InquiriesController < ApplicationController
  def new
    @inquiry = Inquiry.new
  end
  
  def create
      @inquiry = Inquiry.new(params[:inquiry])  
      if @inquiry.save  
        redirect_to root_url, :flash => { :success => "Thank you. We will keep you posted on our progress." }
      else  
        redirect_to root_url, :flash => { :warning => "Error. Please try again." }
      end   
  end

end
