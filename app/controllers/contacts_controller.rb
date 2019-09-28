class ContactsController < ApplicationController
  def index
  end

  def new
   @contact = Contact.new
  end

  def create
   @contact = Contact.create(Name: params[:contact][:Name],
                  Email: params[:contact][:Email],Content: params[:contact][:Content], )

  if @contact.save
   redirect_to "/contacts/new"
 else
   render :new
  end
end
end
