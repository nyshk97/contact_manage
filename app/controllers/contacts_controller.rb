# frozen_string_literal: true

class ContactsController < ApplicationController
  protect_from_forgery except: [:create]
  skip_before_action :require_login, only: [:create]
  def index
    @q = Contact.ransack(params[:q])
    @contacts = @q.result(distinct: true).active.page(params[:page])
  end

  def closed
    @q = Contact.ransack(params[:q])
    @contacts = @q.result(distinct: true).status(2).page(params[:page])
  end

  def create
    @contact = Contact.new(new_contact)
    unless @contact.save
      logger.error("[Fail to create]: #{@contact.errors.full_messages}")
    end
  end

  def edit
    @contact = Contact.find(params[:id])
    @comments = Comment.where(contact_id: params[:id])
    @new_comment = Comment.new
    @users = User.all
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update(contact_params)
      redirect_to root_url, notice: '更新しました'
    else
      render :edit
    end
  end

  def destroy; end

  private

  def contact_params
    params.require(:contact).permit(:status, :user_id)
  end

  def new_contact
    params.permit(:company, :name, :kana, :email, :phone, :content)
  end
end
