class WelcomeController < ApplicationController
  before_filter :referred_by?, only: [:index]
  def index

  end

  def allure
    @new_client = Message.new
  end

  def elle
    @new_client = Message.new
  end

  def congratulations
    
  end

  def create
    @new_client = Message.new(params[:message])
    
    if @new_client.valid?
      NotificationsMailer.new_client(@new_client).deliver
      redirect_to(congratulations_path, :notice => "Message was successfully sent.")
    else
      flash.now.alert = "Please fill all fields."
      render :new
    end
  end
end
