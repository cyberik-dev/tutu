class SearchesController < ApplicationController

  def create
    redirect_to action: "show"
  end

  def show
    @stations = RailwayStation.all
  end
end
