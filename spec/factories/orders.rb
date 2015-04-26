# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    last_name "MyString"
    first_name "MyString"
    last_name_kana "MyString"
    first_name_kana "MyString"
    mail "MyString"
    phone_number "MyString"
    purpose "MyText"
    preffered_date "2015-01-19"
    length 1.5
    width 1.5
    message "MyText"
  end
end
