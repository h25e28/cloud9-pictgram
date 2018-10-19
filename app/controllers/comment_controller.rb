class CommentController < ApplicationController
  def index
  end
  
  def create
    comment = Comment.new
    comment.user_id = current_user.id
    comment.topic_id=params[:topic_id]
    if comment.save
      redirect_to topics_path, notice: 'コメントしました'
    else
      redirect_to topics_path, notice: 'コメントに失敗しました'
    end
  end
end
