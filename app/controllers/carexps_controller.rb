class CarexpsController < ApplicationController

  def index
    @user = current_user
    @carexps = @user.carexp


    if @user.carexp.nil?
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
    @carexp.user = current_user

    if @carexp.save
      flash[:notice] = "Car expenses successfully added"
      redirect_to carexps_path
    else
      render 'new'
    end
  end

  def edit

    @user = current_user
    @carexp = @user.carexp

    if @user.carexp.nil?
      redirect_to new_carexp_path
    else
      render 'edit'
    end

  end

  def update
    @user = current_user
    @carexp = @user.carexp

    if @carexp.update(carexp_params)

      flash[:notice] = "Car expenses were successfully updated."

      redirect_to carexps_path

    else

      render 'edit'

    end

  end

  private

  def carexp_params
    params.require(:carexp).permit(:gas, :maintenance, :insurance, :taxes, :payment)
  end
end
