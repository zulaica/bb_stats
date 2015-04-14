module Api
  class PlayersController < Api::BaseController

    def index
      @players = Player.all
      respond_to do |format|
        format.json { render json: @players }
      end
    end

    def create
      player = Player.new(player_params)
      if player.save
        render json: player, status: :created
      else
        render json: player.errors, status: :unprocessible_entity
      end
    end

    private

      def player_params
        params.require(:player).permit(:name, :number, :team_id)
      end

      def query_params
        # this assumes that an album belongs to an artist and has an :artist_id
        # allowing us to filter by this
        params.permit(:team_id, :name, :location)
      end

  end
end
