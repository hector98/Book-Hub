class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  before_action :set_post

  def create
    @comment = @post.comments.new(comment_params)
    if @comment.save
      redirect_to post_path(@post), notice: "Comentario agregado correctamente."
    else
      redirect_to post_path(@post), alert: "Hubo un error al agregar el comentario."
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id)
  end
end
