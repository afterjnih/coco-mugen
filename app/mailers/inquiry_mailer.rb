require 'sendgrid-ruby'
class InquiryMailer < ActionMailer::Base

  def contact_email_to_customer(contact)
    send_contacting_mail_to_customer(contact)
  end

  def contact_email_to_owner(contact)
    send_contacting_mail_to_owner(contact)
  end

  def order_email_to_customer(order)
    send_ordering_mail_to_customer(order)
  end

  def order_email_to_owner(order)
    send_ordering_mail_to_owner(order)
  end

  def send_contacting_mail_to_customer(contact)
    mail = SendGrid::Mail.new do |m|
      m.to = contact.mail
      m.from = ENV['email']
      m.subject = '[coco-mugen]お問い合わせいただき、ありがとうございます'
      m.text = <<-"EOS"
以下の内容のお問い合わせを承りました

--------------------------
#{make_contacting_mail_text(contact)}
--------------------------
      EOS
    end
      puts make_client.send(mail)
  end

  def send_contacting_mail_to_owner(contact)
    mail = SendGrid::Mail.new do |m|
      m.to = ENV['email']
      m.from = ENV['email']
      m.subject = '[coco-mugen]お客様よりお問い合わせを承りました。'
      m.text = <<-"EOS"
Webサイトからお問い合わせがありました。

--------------------------
#{make_contacting_mail_text(contact)}
--------------------------
      EOS
    end
      puts make_client.send(mail)
  end

  def send_ordering_mail_to_customer(order)
    mail = SendGrid::Mail.new do |m|
      m.to = order.mail
      m.from = ENV['email']
      m.subject = '[coco-mugen]ご注文いただき、ありがとうございます'
      m.text = <<-"EOS"
以下の内容のご注文を承りました

--------------------------
#{make_ordering_mail_text(order)}
--------------------------
      EOS
    end
      puts make_client.send(mail)
  end

  def send_ordering_mail_to_owner(order)
    mail = SendGrid::Mail.new do |m|
      m.to = ENV['email']
      m.from = ENV['email']
      m.subject = '[coco-mugen]お客様よりご注文を承りました。'
      m.text = <<-"EOS"
Webサイトからご注文がありました。

--------------------------
#{make_ordering_mail_text(order)}
--------------------------
      EOS
    end
      puts make_client.send(mail)
  end

  def make_client
    client = SendGrid::Client.new do |c|
      c.api_user = ENV['SENDGRID_USERNAME']
      c.api_key = ENV['SENDGRID_PASSWORD']
    end
    client
  end

  def make_contacting_mail_text(contact)
    text = <<-"EOS"
氏名: #{contact.name}
Email: #{contact.mail}
問い合せ内容: #{contact.content}
    EOS
  end

  def make_ordering_mail_text(order)
    text = <<-"EOS"
氏名: #{order.last_name} #{order.first_name}
シメイ: #{order.last_name_kana} #{order.first_name_kana}
Email: #{order.mail}
電話: #{order.phone_number}
〒: #{order.residence_zip_code}
住所: #{order.residence}
送付先〒: #{order.mailing_zip_code}
送付先住所: #{order.mailing_address}
    EOS
    if order.receipt_enabled == true
      text.concat("\n領収書: 要")
    else
      text.concat("\n領収書: 不要")
    end
    text.concat("\n宛名: #{order.phone_number}")
    text.concat("\n但書: #{order.phone_number}")
    unless order.purpose == 'other'
      text.concat("\n用途: #{order.purpose}")
    else
      text.concat("\n用途: #{order.other_purpose}")
    end
    text.concat("\n希望日: #{order.preffered_date}")
    unless order.size == 'other'
      text.concat("\nサイズ: #{order.size}")
    else
      text.concat("\nサイズ: その他")
      text.concat("\n縦: #{order.length}cm")
      text.concat("\n横: #{order.width}cm")
    end
    text.concat("\n備考: #{order.remarks}")
  end
end
