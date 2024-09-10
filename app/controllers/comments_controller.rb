class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
		if comment.save
    redirect_to "/prototype/#{comment.prototype.id}"  # コメントと結びつくプロトタイプの詳細画面に遷移する
		else
		redirect_to "/prototype/#{comment.prototype.id}"
	end
end
private
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end