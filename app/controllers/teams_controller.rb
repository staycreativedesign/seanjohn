class TeamsController < ApplicationController
  def index
    @teams = Team.order(:id).all
    
  end

  def show
    @team = Team.find(params[:id])
    
  end

  def edit
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(params[:team])
    if @team.save
      render :show
    else 
      render :new
    end
    
  end

  def update
    @team = Team.find(params[:id])
    @team.update_attributes(params[:team])
    if @team.save
      render :show
    else 
      render :new
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to root_path
  end
end
