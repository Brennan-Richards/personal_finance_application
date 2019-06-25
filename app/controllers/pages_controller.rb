class PagesController < ApplicationController
  def home

  end

  def master

    if Housingexp.count == 0 || Carexp.count == 0 || Tax.count == 0 #|| Groceries.count == 0
      redirect_to mastererror_path
    else
      render 'master'
    end
  end
end
