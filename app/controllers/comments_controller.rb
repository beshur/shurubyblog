class CommentsController < InheritedResources::Base
  def create
    @comment = Comment.new(params[:comment])
    if @comment.save
      flash[:notice] = "Comment was added."
      redirect_to(@comment.post)
    else
      flash[:notice] = "Error adding comment: #{comment.errors}"
      redirect_to(@comment.post)
    end
  end
end

