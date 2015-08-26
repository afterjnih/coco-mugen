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

  def thanks
    @order = Order.new(order_params)
    @order.save!
    InquiryMailer.order_email_to_customer(@order).deliver
    InquiryMailer.order_email_to_owner(@order).deliver
    render action: :thanks
  end

  private

    def order_params
      params.require(:order).permit(:last_name, :first_name,
                                    :last_name_kana, :first_name_kana,
                                    :mail, :phone_number, :cellphone_number,
                                    :residence, :mailing_address,
                                    :residence_zip_code, :mailing_zip_code,
                                    :receipt_enabled, :receipt_address, :receipt_proviso,
                                    :purpose, :other_purpose, :preffered_date,
                                    :size, :length, :width,
                                    :remarks
                                   )
    end
end
