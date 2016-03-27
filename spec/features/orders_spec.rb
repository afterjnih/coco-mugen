require 'rails_helper'

describe 'OrdersPage' do
  scenario 'show order page' do
    visit new_order_path
    expect(page).to have_content 'Order'
  end
end