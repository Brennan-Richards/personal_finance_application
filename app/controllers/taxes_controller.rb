class TaxesController < ApplicationController

  def index
    @user = current_user
    @taxes = @user.tax

    if @user.tax.nil?
      redirect_to new_tax_path
    else
      render 'index'
    end
  end

  def new
    @tax = Tax.new
  end

  def create
    @tax = Tax.new(tax_params)
    @tax.user = current_user

    if @tax.save
      flash[:notice] = "Tax expenses successfully added"
      redirect_to taxes_path
    else
      render 'new'
    end
  end

  def edit
    @user = current_user
    @tax = @user.tax

    if @user.tax.nil?
      redirect_to new_tax_path
    else
      render 'edit'
    end

  end

  def update
    @user = current_user
    @tax = @user.tax

    if @tax.update(tax_params)

      flash[:notice] = "Tax expenses successfully updated."

      redirect_to taxes_path

    else

      render 'edit'

    end

  end

private
  def tax_params
    params.require(:tax).permit(:salary, :fincome, :sincome)
  end

end
