class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def confirm
    @contact = Contact.new(contact_params)
    # binding.pry
  end

  def thanks
    @contact = Contact.new(contact_params)
    @contact.save!
    InquiryMailer.contact_email(@contact).deliver
  end

  private
    def contact_params
      params.require(:contact).permit(:name, :mail, :content)
    end
end
