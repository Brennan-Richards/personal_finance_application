class PagesController < ApplicationController
  def home
    @tax = Tax.new
    
    if current_user
      redirect_to master_path
    end

  end

  def master
    @spec = Spec.new
    @user = current_user

    if current_user
      render 'master'
    else
      redirect_to root_path
    end
  end
end
