class SpecsController < ApplicationController


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

  def edit

      @spec = Spec.last

      if Spec.count == 0
        redirect_to new_spec_path
      else
        render 'edit'
      end

  end

  def update
      @spec = Spec.last

      if @spec.update(spec_params)

        flash[:notice] = "Salary successfully updated."

        redirect_to master_path

      else

        render 'edit'

      end
  end

  private
    def spec_params
      params.require(:spec).permit(:salary, :payperiod)
    end

end
