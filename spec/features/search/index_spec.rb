require 'rails_helper'

RSpec.describe 'Search Page', type: :feature do
  describe "It can show nation information" do
    it "can show the nation and its affiliates" do
      visit root_path

      select "Fire Nation", from: :nation
      click_on "Search For Members"

      expect(current_path).to eq(search_path)
      expect(page).to have_content("Members of the Fire Nation")
      expect(page).to have_content("Total Members: 20")
      expect(page).to have_content("Name: Afiko")
      expect(page).to have_content("Allies: Fire Nation")


      expect(page).to have_content("Name: Fire Nation company leader")
      expect(page).to have_content("Allies: Sokka")
      expect(page).to have_content("Enemies: Earth Kingdom")
      expect(page).to have_content("Affiliations: Fire Nation Army")
    end
  end
end