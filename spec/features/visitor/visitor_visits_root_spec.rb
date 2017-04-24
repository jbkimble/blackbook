require 'rails_helper'

describe 'As a visitor I visit root' do
    xscenario 'I see the correct content' do
      visit('/')

      expect(page).to have_content("blackbook.io")
      expect(page).to have_content("Welcome to blackbook")

      expect(page).to have_content("Login")
      expect(page).to have_content("Logout")
      expect(page).to have_content("Signup")
    end
end
