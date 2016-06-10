class EducationsController < ApplicationController
  before_filter :authenticate_user!, only: [:index, :edit, :update, :new]
  def index
    @educations = Education.all
    
  end

  def show
    @education = Education.find(params[:id])
    
  end

  def edit
    @education = Education.find(params[:id])
  end

  def new
    @education = Education.new    
  end

  def create
    @education = Education.new(params[:education])
    if @education.save
      render :show
    else
      render "new"
    end
    
  end

  def update
    @education = Education.find(params[:id])
    @education.update_attributes(params[:education])
    if @education.save
      render :show
    else
      render "edit"
    end
    
  end

  def destroy
    
  end
end
