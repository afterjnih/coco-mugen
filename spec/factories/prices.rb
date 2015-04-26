# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :price do
    size 'A5(210×148㍉)'
    price 1
    purpose 'ウェディング'
  end
end
