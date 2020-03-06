class ContactsController < ApplicationController
  def index
    @backlogs = Contact.where(status: 0)
    @wips = Contact.where(status: 1)
    @closes = Contact.where(status: 2)
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    
  end

  def destroy
    
  end
end
