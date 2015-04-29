require 'date'
class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def confirm
    @order = Order.new(order_params)
    unless @order.purpose == 'other'
      @order.other_purpose = "" 
    end
  end

  def create
    @order = Order.new(order_params)
    # binding.pry
    @order.save!
    InquiryMailer.order_email(@order).deliver
    flash[:success] = "send a message"
    redirect_to :action => "new"
  end

  private

    def order_params
      params.require(:order).permit(:last_name, :first_name,
                                    :last_name_kana, :first_name_kana,
                                    :mail, :phone_number, :cellphone_number,
                                    :purpose, :other_purpose, :preffered_date,
                                    :length, :width,
                                    :message
                                   )
    end
end
