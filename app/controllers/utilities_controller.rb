class UtilitiesController < ApplicationController
  class utilitiesController < ApplicationController
    class utilitiesController < ApplicationController

      def index
        @user = current_user
        @utilities = @user.utility


        if @user.utility.nil?
          redirect_to new_utility_path
        else
          render 'index'
        end
      end

      def new
        @utility = utility.new
      end

      def create
        @utility = utility.new(utility_params)
        @utility.user = current_user

        if @utility.save
          flash[:notice] = "Utility expenses successfully added"
          redirect_to utilities_path
        else
          render 'new'
        end
      end

      def edit

        @user = current_user
        @utility = @user.utility

        if @user.utility.nil?
          redirect_to new_utility_path
        else
          render 'edit'
        end

      end

      def update
        @user = current_user
        @utility = @user.utility

        if @utility.update(utility_params)

          flash[:notice] = "Utility expenses were successfully updated."

          redirect_to utilities_path

        else

          render 'edit'

        end

      end

      private

      def utility_params
        params.require(:utility).permit(:electricity, :heating, :phone, :cable, :internet, :water)
      end
    end

  end

end
