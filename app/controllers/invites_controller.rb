class InvitesController < ApplicationController
  skip_before_action :require_login, only: [:edit, :update]
  def new
    @user = User.new
  end

  def create
    @user = User.new(invite_params)
    @user.set_activation_token
    if @user.save
      UserMailer.activation_needed_email(@user).deliver_now
      redirect_to root_url, notice: '招待メールを送信しました'
    else
      render :new
    end
  end

  def edit
    if (@user = User.load_from_activation_token(params[:id]))
      @user.activate!
    else
      flash[:notice] = '認証に失敗しました'
      redirect_to login_url
    end
  end

  def update

  end

  private

  def invite_params
    params.require(:user).permit(:email)
  end
end
