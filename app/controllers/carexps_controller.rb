class CarexpsController < ApplicationController

  def index
    @carexps = Carexp.all

    if Carexp.count == 0
      redirect_to new_carexp_path
    else
      render 'index'
    end
  end

  def new
    @carexp = Carexp.new
  end

  def create
    @carexp = Carexp.new(carexp_params)

    if @carexp.save
      flash[:notice] = "Car expenses successfully added"
      redirect_to carexps_path
    else
      render 'new'
    end
  end

  def edit
    
    @carexp = Carexp.last

    if Carexp.count == 0
      redirect_to new_carexp_path
    else
      render 'edit'
    end

  end

  def update

    if @carexp.update(carexp_params)

      flash[:notice] = "Article was successfully updated"

      redirect_to article_path(@carexp)

    else

      render 'edit'

    end

  end

  private

  def carexp_params
    params.require(:carexp).permit(:gas, :maintenance, :insurance, :taxes, :payment)
  end
end
