class ServicesController < ApplicationController
  before_filter :authenticate_user!, only: [:index, :edit, :update, :new]
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
    
  end

  def edit
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new

  end

  def create
    @service = Service.new(params[:service])
    if @service.save
      render :show
    else
      render :new
    end
  end

  def update
    @service = Service.find(params[:id])
    @service.update_attributes(params[:service])
    if @service.save
      render :show
    else
      render :new     
    end
  end

  def destroy
    
  end
end
