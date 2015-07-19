class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def confirm
    @contact = Contact.new(contact_params)
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save!
    InquiryMailer.contact_email(@contact).deliver
    flash[:success] = "send a message"
    redirect_to :action => "new"
  end

  private
    def contact_params
      params.require(:contact).permit(:name, :mail, :content)
    end
end
