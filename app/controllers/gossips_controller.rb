class GossipsController < ApplicationController
    def index
        @gossips = Gossip.all
        @users = User.all
      end

      def show
        @show_gossips = Gossip.find(params['id'])
        @time = @show_gossips.created_at
      end

      def new

      end

      def create
        @gossip = Gossip.new(params[:gossip])

        @gossip.save
        redirect_to @GossipsController
      end

      private def gossip_params
        params.require(:gossip).permit(:title, :content)
      end
end
