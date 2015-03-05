require 'rails_helper'

feature 'Visitor checks the weather'  do
  scenario 'sunny' do
    #setup - get to where we need to be
    visit root_path

    #exercise
    fill_in "What's your zipcode?", with: "94111"
    click_button "Is it going to rain?"

    #verify
    expect(page).to have_content("Sun's gonna be shining!")
    expect(page).to have_content("No umbrella needed")
    
  end

  scenario 'rainy' do
    #setup - get to where we need to be
    visit root_path

    #exercise
    fill_in "What's your zipcode?", with: "11149"
    click_button "Is it going to rain?"

    #verify
    expect(page).to have_content("You'll be singing in the rain!")
    expect(page).to have_content("Better bring that umbrella")
end

end