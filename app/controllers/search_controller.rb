class SearchController < ApplicationController
  def index
    @benders = SearchFacade.airbender_details('Fire Nation')
  end
end
