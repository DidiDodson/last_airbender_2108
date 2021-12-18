class SearchController < ApplicationController
  def index
    @benders = SearchFacade.airbender_details(params[:nation])
    @first_25 = @benders.take(25)
  end
end
