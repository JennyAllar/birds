require 'spec_helper'
require_relative '../bird_app'

Capybara.app = BirdApp

feature "Birdies" do
  scenario "users can add and see birds" do
    visit '/'
    expect(page).to have_no_content("finch")
    fill_in "Bird Name", with: "finch"
    click_on "Add Bird"
    expect(page).to have_content("finch")
  end
end
