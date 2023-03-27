class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(comment_params)
    @comment.project_id = params[:project_id]
    @comment.save
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end