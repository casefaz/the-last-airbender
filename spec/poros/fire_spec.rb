require 'rails_helper'

RSpec.describe Fire do 
  it 'exists and has attributes' do
    data = {
            "_id": "5cf5679a915ecad153ab68fd",
            "allies": [
                        "Ozai"
                      ],
            "enemies": [
                        "Earth Kingdom"
                        ],
            "name": "Chan (Fire Nation admiral)",
            "affiliation": "Fire Nation Navy"
             }
             
    character = Fire.new(data)

    expect(character.allies).to eq('Ozai')
    expect(character.name).to eq('Chan (Fire Nation admiral)')
    expect(character.affiliation).to eq('Fire Nation Navy')
    expect(character.enemies).to eq('Earth Kingdom')

  end
end