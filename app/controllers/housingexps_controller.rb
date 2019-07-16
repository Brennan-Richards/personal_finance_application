class HousingexpsController < ApplicationController

  def index
    @user = current_user
    @housingexps = @user.housingexp

    if @user.housingexp.nil?
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
    @housingexp.user = current_user

    if @housingexp.save
      flash[:notice] = "Housing expenses successfully added"
      redirect_to housingexps_path
    else
      render 'new'
    end
  end

  def edit
    @user = current_user
    @housingexp = @user.housingexp

    if @user.housingexp.nil?
      redirect_to new_housingexp_path
    else
      render 'edit'
    end

  end

  def update
    @user = current_user
    @housingexp = @user.housingexp

    if @housingexp.update(housingexp_params)

      flash[:notice] = "Housing expenses were successfully updated"

      redirect_to housingexps_path

    else

      render 'edit'

    end

  end

private
  def housingexp_params
    params.require(:housingexp).permit(:mortgage, :propertytax, :electricity, :heating, :water, :entertainment)
  end

end
