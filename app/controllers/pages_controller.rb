class PagesController < ApplicationController
  def home
    @lifts = Lift.all
  end
end
