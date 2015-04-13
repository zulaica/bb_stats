module Api
  class TeamsController < Api::BaseController

    def index
      render json: Team.all
    end

    def create
      team = Team.new(team_params)
      if team.save
        render json: team, status: :created
      else
        render json: team.errors, status: :unprocessible_entity
      end
    end

    private

    def team_params
      params.require(:team).permit(:name, :location)
    end

    def query_params
      # this assumes that an album belongs to an artist and has an :artist_id
      # allowing us to filter by this
      params.permit(:team_id, :name, :location)
    end

  end
end
