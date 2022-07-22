require 'rails_helper'

RSpec.describe FireBenderService do 
  it 'returns the data from the API' do 
    fire_nation = FireBenderService.get_nation_info('Fire Nation')
    binding.pry
    expect(fire_nation).to be_an(Array)
    character_info = fire_nation.first
    expect(character_info).to be_a(Hash)
    expect(character_info).to have_key(:name)
    expect(character_info).to have_key(:enemies)
    expect(character_info).to have_key(:affiliation)
  end
end