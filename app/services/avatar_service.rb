require 'faraday'

class AvatarService
  def conn
    Faraday.new(url: "https://last-airbender-api.fly.dev/")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_25_affiliations(nation)
    get_url("api/v1/characters?affiliation=#{nation}&perPage=25")
  end

  def get_all_affiliations(nation)
    get_url("api/v1/characters?affiliation=#{nation}&perPage=1000")
  end

  

end