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
      flash[:notice] = "Housing expenses successfully added"
      redirect_to housingexps_path
    else
      render 'new'
    end
  end

  def edit
    @housingexp = Housingexp.last

    if Housingexp.count == 0
      redirect_to new_housingexp_path
    else
      render 'edit'
    end

  end

  def update

    if @housingexp.update(housingexp_params)

      flash[:notice] = "Article was successfully updated"

      redirect_to article_path(@housingexp)

    else

      render 'edit'

    end

  end

private
  def housingexp_params
    params.require(:housingexp).permit(:mortgage, :propertytax, :electricity, :heating, :water, :entertainment)
  end

end
