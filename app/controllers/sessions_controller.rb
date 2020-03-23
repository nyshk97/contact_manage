class SessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]
  def index
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_back_or_to(root_url, notice: 'ログインしました')
    else
      flash[:alert] = 'ログイン失敗'
      render :new
    end
  end

  def destroy
    logout
    redirect_to(login_url, notice: 'ログアウトしました')
  end
end
