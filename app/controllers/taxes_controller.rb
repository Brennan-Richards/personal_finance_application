class TaxesController < ApplicationController

  def index
    @taxes = Tax.all

    if Tax.count == 0
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

    if @tax.save
      redirect_to taxes_path
    else
      render 'new'
    end
  end

private
  def tax_params
    params.require(:tax).permit(:salary, :dependents, :selfemployed, :fincome, :sincome)
  end

end