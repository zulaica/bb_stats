module Api
  class PlayersController < Api::BaseController

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
