class UsersController < ApplicationController

    def index

    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(title: params['email'], content: params['password'], user_id: 1)
        if @user.save
          redirect_to root_path
        else
          redirect_to new_gossip_path
        end
    end



end
