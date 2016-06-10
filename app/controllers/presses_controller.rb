class PressesController < ApplicationController
  before_filter :authenticate_user!, only: [:edit, :update, :new]
  def index
    @presses = Press.all
  end

  def edit
    @press = Press.find(params[:id])
  end

  def new
    @press = Press.new
  end
  def create
    @press = Press.new(params[:press])
    if @press.save
      redirect_to presses_path
    else
      render :new
    end
  end

  def update
    @press = Press.find(params[:id])
    @press.update_attribues(params[:press])
    if @press.save
      render :index
    else
      render :new
    end
  end

  def destroy
    
  end

end
