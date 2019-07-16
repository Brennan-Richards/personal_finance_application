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
    @foodexp.user = current_user

    if @foodexp.save
      flash[:notice] = "Food expenses successfully added"
      redirect_to foodexps_path
    else
      render 'new'
    end
  end

  def edit
    @foodexp = Foodexp.last

    if Foodexp.count == 0
      redirect_to new_foodexp_path
    else
      render 'edit'
    end
  end

  def update

    @foodexp = Foodexp.last

    if @foodexp.update(foodexp_params)

      flash[:notice] = "Food expenses successfully updated"

      redirect_to foodexps_path

    else

      render 'edit'

    end

  end

  private

  def foodexp_params
    params.require(:foodexp).permit(:monthlyfood)
  end

end
