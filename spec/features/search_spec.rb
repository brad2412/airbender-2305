require "rails_helper"

RSpec.feature "Search for Members", type: :feature do
  scenario "User searches for Fire Nation members" do
    visit "/"
    
    select "Fire Nation", from: "nation"
    
    click_button "Search For Members"
    
    expect(page).to have_current_path("/search")
    
    expect(page).to have_content("Total Number of People in Fire Nation:")
    
    expect(page).to have_css("ul li", count: 25)
    
    expect(page).to have_content("Name:")
  end
end