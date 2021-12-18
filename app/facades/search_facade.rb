class SearchFacade
  class << self
    def airbender_details(nation)
      nation_format = nation.split("_").join("+")

      airbenders = SearchService.get_data("api/v1/characters?affiliation=#{nation_format}&perPage=497")

      airbenders.map do |result|
        Airbender.new(result)
      end
    end
  end
end
