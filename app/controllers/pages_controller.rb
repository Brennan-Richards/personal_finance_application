class PagesController < ApplicationController
  def home
    @tax = Tax.new
  end

  def master
    @spec = Spec.new
  end
end
