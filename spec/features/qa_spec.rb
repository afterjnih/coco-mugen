require 'rails_helper'

describe 'QAPage' do
  scenario 'show qa page' do
    visit qa_path
    expect(page).to have_content 'Q&A'
  end
end