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
    @contact = Contact.find(params[:id])
    if @contact.update(contact_params)
      redirect_to root_url, notice: 'ステータスを編集しました'
    else
      render :edit
    end
  end

  def destroy
    
  end

  private

  def contact_params
    params.require(:contact).permit(:status)
  end
end
