class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      flash[:notice] = 'コメントを追加しました'
      redirect_to edit_contact_url(id: comment_params[:contact_id])
    else
      flash[:alert] = 'コメントは1文字以上入力してください'
      redirect_to edit_contact_url(id: comment_params[:contact_id])
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :content, :contact_id)
  end
end
