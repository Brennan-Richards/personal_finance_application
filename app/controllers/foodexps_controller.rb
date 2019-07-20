class FoodexpsController < ApplicationController

  def index
    @user = current_user
    @foodexps = @user.foodexp

    if @user.foodexp.nil?
      redirect_to new_foodexp_path
    else
      render 'index'
    end
  end

  def new
    @foodexp = Foodexp.new
  end

  def create
    @foodexp = Foodexp.new(foodexp_params)
    @foodexp.user = current_user

    if @foodexp.save
      flash[:notice] = "Food expenses successfully added"
      redirect_to foodexps_path
    else
      render 'new'
    end
  end

  def edit
    @user = current_user
    @foodexp = @user.foodexp

    if @user.foodexp.nil?
      redirect_to new_foodexp_path
    else
      render 'edit'
    end
  end

  def update
    @user = current_user

    @foodexp = @user.foodexp

    if @foodexp.update(foodexp_params)

      flash[:notice] = "Food expenses successfully updated"

      redirect_to foodexps_path

    else

      render 'edit'

    end

  end

  private

  def foodexp_params
    params.require(:foodexp).permit(:monthlyfood, :dinner)
  end

end
