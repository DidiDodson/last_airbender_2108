class SearchService
  class << self
    def conn
      conn = Faraday.new(url: 'https://last-airbender-api.herokuapp.com')
    end

    def get_data(url)
      response = conn.get(url)

      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
