require 'rails_helper'

describe Price do

  it "is invalid without a price" do
    price = Price.new(price: nil)
    price.valid?
    expect(price.errors[:price]).to include("を入力してください。")
  end

  it "is valid with a price which is equal to 0" do
    price = Price.new(
      size: 'A5(210×148㍉)',
      price: 0,
      purpose: '看板'
    )
    expect(price).to be_valid
  end

  it "is invalid with a price as string" do
    price = Price.new(price: "100円")
    price.valid?
    expect(price.errors[:price]).to include("は数値で入力してください。")
  end
end

