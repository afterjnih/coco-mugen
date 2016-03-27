require 'rails_helper'

describe 'ContactPage' do
  scenario 'show contact page' do
    visit new_contact_path
    expect(page).to have_content 'Contact'
  end
end