class InquiryMailer < ActionMailer::Base

  default from: ENV['email']
  default to: ENV['to_email']

  def order_email(order)
    puts ENV['to_email']
    @order = order
    mail(subject: 'お問い合わせを承りました')
  end
end
