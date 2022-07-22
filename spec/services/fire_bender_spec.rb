require 'rails_helper'

RSpec.describe FireBenderService do 
  it 'returns the data from the API' do 
    fire_nation = FireBenderService.get_nation_info('Fire Nation')
    # binding.pry
    data = fire_nation[0].each do |fire|
      expect(fire_nation[0]).to have_key([:allies])
      expect(fire_nation[0]).to have_key([:enemies])
      expect(fire_nation[0]).to have_key([:name])
      expect(fire_nation[0]).to have_key([:affiliation])
      expect(fire_nation[0]).to have_key([:photoUrl])
    end
  end
end