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
      redirect_to carexps_path
    else
      render 'new'
    end
  end

  private

  def carexp_params
    params.require(:carexp).permit(:gas, :maintenance, :insurance, :taxes, :payment)
  end
end
