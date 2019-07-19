class MiscexpsController < ApplicationController

    def index
      @user = current_user
      @miscexps = @user.miscexp


      if @user.miscexp.nil?
        redirect_to new_miscexp_path
      else
        render 'index'
      end
    end

    def new
      @miscexp = Miscexp.new
    end

    def create
      @miscexp = Miscexp.new(miscexp_params)
      @miscexp.user = current_user

      if @miscexp.save
        flash[:notice] = "Miscellaneous expenses successfully added"
        redirect_to miscexps_path
      else
        render 'new'
      end
    end

    def edit

      @user = current_user
      @miscexp = @user.miscexp

      if @user.miscexp.nil?
        redirect_to new_miscexp_path
      else
        render 'edit'
      end

    end

    def update
      @user = current_user
      @miscexp = @user.miscexp

      if @miscexp.update(miscexp_params)

        flash[:notice] = "Miscellaneous expenses were successfully updated."

        redirect_to miscexps_path

      else

        render 'edit'

      end

    end

    private

    def miscexp_params
      params.require(:miscexp).permit(:healthinsurance, :entertainment, :other)
    end

  end
