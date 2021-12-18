class SearchFacade
  class << self
    def airbender_details(nation)
      fire_airbenders = SearchService.get_data('Fire Nation')

      fire_airbenders.map do |result|
        Airbender.new(result)
      end
    end
  end
end
