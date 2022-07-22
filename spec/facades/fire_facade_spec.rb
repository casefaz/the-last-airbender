require 'rails_helper'

RSpec.describe FireFacade do 
  it 'produces poros objects with service data' do 
    fire_nation = FireFacade.get_nation_info('Fire Nation')
    binding.pry
    expect(fire_nation).to be_a(Fire)
  end
end