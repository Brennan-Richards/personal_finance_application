class SpecsController < ApplicationController

  def new

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
      @user = current_user
      @spec = @user.spec

      if @user.spec.nil?
        redirect_to new_spec_path
      else
        render 'edit'
      end

  end

  def update
      @user = current_user
      @spec = @user.spec

      if @spec.update(spec_params)

        flash[:notice] = "Salary successfully updated."

        redirect_to master_path

      else

        render 'edit'

      end
  end

  private
    def spec_params
      params.require(:spec).permit(:salary)
    end

end
