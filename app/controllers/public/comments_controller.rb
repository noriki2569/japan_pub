class Public::CommentsController < ApplicationController
  def create
    pub = Pub.find(params[:pub_id])
    comment = Comments.new(comment_params)
    comment.user_id = current_user.id
    comment.pub_id = pub.id
    comment.save
    redirect_to pub_path(pub)
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
