class ReactionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post

  def create
    @reaction = @post.reactions.new(reaction_params)
    if @reaction.save
      redirect_to post_path(@post), notice: "Recomiendas este post."
    else
      redirect_to post_path(@post), alert: "Hubo un error al recomendar el post."
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def reaction_params
    params.require(:reaction).permit(:reaction_type).merge(user_id: current_user.id)
  end
end
