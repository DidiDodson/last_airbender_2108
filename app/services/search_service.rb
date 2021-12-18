class SearchService
  class << self
    def conn
      conn = Faraday.new(url: 'https://last-airbender-api.herokuapp.com')
    end

    def get_data(nation)
      response = conn.get("api/v1/characters?affiliation=#{nation}&perPage=497")

      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
