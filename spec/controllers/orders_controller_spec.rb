require 'rails_helper'

describe OrdersController do
  describe 'GET #new' do
    it 'assigns a new Order to @order' do
      get :new
      expect(assigns(:order)).to be_a_new(Order)
    end

    it 'renders the :new template' do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'POST #confirm' do
    context 'with valid params' do
      it 'renders the :confirm template' do
        post :confirm, order: FactoryGirl.attributes_for(:order)
        expect(response).to render_template :confirm
      end
    end
  end

  # describe 'POST #create' do
  #   it 'saves the new order in the datebase' do
  #     expect {
  #       p FactoryGirl.attributes_for(:order)
  #       post :create, order: FactoryGirl.attributes_for(:order)
  #     }.to change(Order, :count).by(1)
  #   end
  #
  #   it 'redirects to order#new' do
  #     post :create, order: FactoryGirl.attributes_for(:order)
  #     expect(response).to redirect_to new_order_path
  #   end
  # end
end
