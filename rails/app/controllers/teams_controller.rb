class TeamsController < ApplicationController::Base

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to teams_path
    else
      render :new
    end
  end


  end

  private

    def team_params
      params.require(:team).permit(:name, :location)
    end

  end
