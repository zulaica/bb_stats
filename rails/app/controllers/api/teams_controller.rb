module Api
  class TeamsController < Api::BaseController

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
