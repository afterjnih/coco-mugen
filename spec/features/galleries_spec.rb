require 'rails_helper'

describe 'GalleriesPage' do
  scenario 'show galleries page' do
    visit gallery_path
    expect(page).to have_content 'Gallery'
  end
end