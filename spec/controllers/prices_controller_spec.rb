require 'rails_helper'

describe PricesController do
  describe 'GET #show' do
    it 'assigns all Price to @price' do
      price_list = []
      price_list << FactoryGirl.create(:price)
      price_list << FactoryGirl.create(:price, size: 'A5(210×148㍉)', price: 3000, purpose: 'ウェディング')
      get :show
      expect(assigns(:price)).to eq price_list
    end

    it 'renders the :show template' do
      get :show
      expect(response).to render_template :show
    end
  end
end
