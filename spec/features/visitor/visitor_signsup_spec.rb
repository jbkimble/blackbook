require 'rails_helper'

describe 'As a visitor' do
  xscenario 'I am able to create and account' do
    visit root_path

    click_on("Signup")
    expect(current_path).to eq(signup_path)
    expect(page).to have_content("Signup For blackbook.")

    fill_in "First Name", with: "Jon"
    fill_in "Last Name", with: "Kimble"
    fill_in "Email", with: "Test@gmail.com"
    fill_in "Picture", with: "asdafaskmpon123.com/phtotsdasdasd"
    fill_in "Password", with: "123"
    fill_in "Job Title", with: "Software Architect"
    fill_in "Current Company", with: "Gorilla Logic"
    fill_in "Last Company", with: "Google"
    fill_in "Why are you interested in Blookbook?", with: "To expand my network so I can achieve my objectives in life."

    click_on "Signup!"
  end
end
