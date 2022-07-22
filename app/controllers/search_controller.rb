class SearchController < ApplicationController
  def index 
    # binding.pry
      @fire_nation = FireFacade.get_nation_info(search_nation)
  end

  private 

  def search_nation
    params[:nation].gsub(/_/, ' ')
  end
end