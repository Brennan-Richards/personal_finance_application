class FoodexpsController < ApplicationController

  def index
    @foodexps = Foodexp.all

    if Foodexp.count == 0
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

    if @foodexp.save
      redirect_to foodexps_path
    else
      render 'new'
    end
  end

private
  def foodexp_params
    params.require(:foodexp).permit(:monthlyfood)
  end

end
