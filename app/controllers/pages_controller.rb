class PagesController < ApplicationController
  def home
    @tax = Tax.new
    if current_user
      redirect_to master_path
    end

  end

  def master
    #@spec = user.spec #necessary for the _newspec partial to function
    @user = current_user
    
    if current_user
      render 'master'
    else
      redirect_to root_path
    end
  end
end
