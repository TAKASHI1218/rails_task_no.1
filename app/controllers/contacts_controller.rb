class ContactsController < ApplicationController
  def index
  end

  def new
   @contact = Contact.new
  end

  def create
   Contact.create(Name: params[:contact][:Name],
                  Email: params[:contact][:Email],Content: params[:contact][:Content], )
   redirect_to "/contacts/new"
  end

end
