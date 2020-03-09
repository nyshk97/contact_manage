# frozen_string_literal: true

class ContactsController < ApplicationController
  protect_from_forgery except: [:create]
  def index
    @backlogs = Contact.status(0).page(params[:page])
    @wips = Contact.status(1).page(params[:page])
    @closes = Contact.status(2).page(params[:page])
  end

  def create
    @contact = Contact.new(new_contact)
    unless @contact.save
      logger.error("[Fail to create]: #{@contact.errors.full_messages}")
    end
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

  def destroy; end

  private

  def contact_params
    params.require(:contact).permit(:status, :company, :name, :kana, :email, :phone, :content)
  end

  def new_contact
    params.permit(:company, :name, :kana, :email, :phone, :content)
  end
end
