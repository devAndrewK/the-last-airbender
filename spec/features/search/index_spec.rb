require 'rails_helper'

RSpec.describe 'Search Index Page' do
  it 'lists all characters from a nation' do
    visit '/'
    select 'Fire Nation', from: 'nation'
    click_on "Search For Members"
    expect(current_path).to eq(search_path)
    within "#character-0" do
      expect(page).to have_content("Chan")
      expect(page).to have_content("Ozai")
      expect(page).to have_content("Earth Kingdom")
    end
  end
end