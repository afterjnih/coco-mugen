require 'rails_helper'

describe 'HomePage' do
  scenario 'show home page' do
    visit root_path
    expect(page).to have_content 'Information'
  end
end