require 'rails_helper'

describe 'AboutPage' do
  scenario 'show about page' do
    visit about_path
    expect(page).to have_content 'Profile'
    expect(page).to have_content 'ChalkArt'
  end
end