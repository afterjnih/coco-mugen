class InquiryMailer < ActionMailer::Base

  default from: ENV['email']
  default to: ENV['to_email']

  def contact_email_to_customer(contact)
    puts ENV['to_email']
    @contact = contact
    mail(to: @contact.mail, subject: '[coco-mugen]お問い合わせいただき、ありがとうございます')
  end

  def contact_email_to_owner(contact)
    puts ENV['to_email']
    @contact = contact
    mail(subject: 'お客様よりお問い合わせを承りました')
  end

  def order_email_to_customer(order)
    puts ENV['to_email']
    @order = order
    mail(to: @order.mail, subject: '[coco-mugen]ご注文いただき、ありがとうございます')
  end

  def order_email_to_owner(order)
    puts ENV['to_email']
    @order = order
    mail(subject: 'お客様よりご注文を承りました')
  end
end
