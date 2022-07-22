require 'rails_helper'

RSpec.describe 'fire index page' do 
  it 'displays the information for the fire nation members' do
    visit '/'
    select 'Fire Nation', from: :nation
    click_on 'Search For Members'
    expect(current_path).to eq('/search')

    expect(page).to have_content('Allies: Ozai')
    expect(page).to have_content('Name: Chan (Fire Nation admiral)')
    expect(page).to have_content('Enemies: none')
    expect(page).to have_content('Affiliation: Fire Nation Navy')
  end
end