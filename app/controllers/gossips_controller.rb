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
        @gossip = Gossip.new
      end

      def edit
        @show_gossips = Gossip.find(params['id'])
      end
      
      def update
        @show_gossips = Gossip.find(params['id'])
        gossip_params = params.require(:gossip).permit(:title, :content)
        @show_gossips.update(gossip_params)
        redirect_to gossips_path
      end

      def create
        @gossip = Gossip.new(title: params['title'], content: params['content'], user_id: 1)
        if @gossip.save
          redirect_to root_path
        else
          redirect_to new_gossip_path
        end
      end

      def destroy
        @gossip = Gossip.find(params[:id])
        @gossip.destroy
        redirect_to gossips_path
      end
      
end
