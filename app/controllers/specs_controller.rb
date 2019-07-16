class SpecsController < ApplicationController

  def index
    @spec = Spec.new
  end

  def _new

    @spec = Spec.new

  end

  def create
      @spec = Spec.new(spec_params)
      @spec.user = current_user

      if @spec.save
        flash[:notice] = "Salary & pay period successfully added"
        redirect_to master_path
      else
        redirect_to master_path
      end
  end

  private
    def spec_params
      params.require(:spec).permit(:salary, :payperiod)
    end

end
