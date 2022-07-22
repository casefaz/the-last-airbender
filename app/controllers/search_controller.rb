class SearchController < ApplicationController
  def index 
    @fire_nation = FireFacade.get_nation_info(params[:affiliation])
  end
end