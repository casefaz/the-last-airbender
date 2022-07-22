require 'rails_helper'

RSpec.describe FireFacade do 
  it 'produces poros objects with service data' do 
    fire_nation = FireFacade.get_nation_info('Fire Nation')
    # binding.pry
    expect(fire_nation).to be_all(Fire)
    expect(fire_nation).to be_an(Array)

    second_character = fire_nation[1]
    expect(second_character.affiliation).to eq('Fire Nation circus')
    expect(second_character.allies).to eq('Ty Lee')
    expect(second_character.photo).to eq('https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819')
  end
end