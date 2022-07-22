class FireBenderService
  def self.get_nation_info(fire_nation)
    response = conn.get('api/v1/characters?') do |f|
      f.params['perPage'] = 100
      f.params['affiliation'] = fire_nation
    end
    # binding.pry
    JSON.parse(response.body, symbolize_names: true)
  end
    
  
  def self.conn 
    url = 'https://last-airbender-api.herokuapp.com/'
    Faraday.new(url: url)
  end
end