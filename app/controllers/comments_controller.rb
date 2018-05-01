class CommentsController < ApplicationController
  def new
  	@comment=Comment.new
  end

  def create
  	@comment = Comment.new(comment_params)
    @comment.gossip_id = params[:gossip_id]
    @comment.save
    redirect_to gossip_path
  end 

  def edit
  	@comment = Comment.find(params[:gossip_id])
  end


  private
    def comment_params
      params.require(:comment).permit(:anonymous_commentor, :body)
    end
end
