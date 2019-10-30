class PagesController < ApplicationController
  def team
  end

  def contact
  end

  def welcome
    puts "#" * 60
    puts "Ceci est le params"
    @fn = params[:user_first_name]
  end

  

end
