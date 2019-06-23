class CarexpsController < ApplicationController

  @gas = 0
  @maintenance = 0
  @insurance = 0
  @taxes = 0

  def gas_create
    @gas = Carexp.gas
  end

  def index
    @carexps = Carexp.all
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
    params.require(:carexp).permit(:gas, :maintenance, :insurance, :taxes)
  end
end
