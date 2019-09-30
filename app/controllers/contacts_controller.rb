class ContactsController < ApplicationController
  def index
  end

  def new
   @contact = Contact.new
  end

  def create
   @contact = Contact.create(name: params[:contact][:name],
                  email: params[:contact][:email],content: params[:contact][:content], )

  if @contact.save
   redirect_to "/contacts/new"
 else
   render :new
  end
end
end
