class HousingexpsController < ApplicationController

  def index
    @housingexps = Housingexp.all

    if Housingexp.count == 0
      redirect_to new_housingexp_path
    else
      render 'index'
    end
  end

  def new
    @housingexp = Housingexp.new
  end

  def create
    @housingexp = Housingexp.new(housingexp_params)

    if @housingexp.save
      redirect_to housingexps_path
    else
      render 'new'
    end
  end

private
  def housingexp_params
    params.require(:housingexp).permit(:mortgage, :propertytax, :electricity, :heating, :water, :entertainment)
  end

end
