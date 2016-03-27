require 'rails_helper'

describe 'PricePage' do
  scenario 'show price page' do
    visit price_path
    expect(page).to have_content 'Price'
  end
end