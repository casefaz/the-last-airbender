require 'rails_helper'

RSpec.describe FireBenderService do 
  it 'returns the data from the API' do 
    fire_nation = FireBenderService.find_data

    expect(fire_nation).to have_key([:allies])
    expect(fire_nation).to have_key([:enemies])
    expect(fire_nation).to have_key([:name])
    expect(fire_nation).to have_key([:affiliation])
    expect(fire_nation).to have_key([:photoUrl])
  end
end