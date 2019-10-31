class UsersController < ApplicationController

    def index

    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(first_name: params['first_name'], last_name: params['last_name'], 
        email: params['email'], password: params['password'])

        if @user.save
            flash[:success] = "Account created"
            puts "#"*60
            puts "User created"
            redirect_to root_path
        else
          redirect_to new_user_path
        end
    end

end
