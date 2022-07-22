require 'rails_helper'

RSpec.describe 'fire index page' do 
  it 'displays the information for the fire nation members' do
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
    visit '/'
    select 'Fire Nation', from: :nation
    click_on 'Search For Members'
    expect(current_path).to eq('/search')

    expect(page).to have_content('Allies: Ozai')
    expect(page).to have_content('Name')
    expect(page).to have_content('Enemies')
    expect(page).to have_content('Affiliation')
  end
end