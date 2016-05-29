require 'rails_helper'

feature "Search User Github" do
  it "Display users github in search #index" do
    visit root_path
    fill_in "name", with: "raphael27atm"
    click_on "Buscar"
    expect(page).to have_content("raphael27atm")
  end
end
