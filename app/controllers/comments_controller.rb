class CommentsController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(params[:comment].permit(:body))
    @comment.user_id = current_user.id
    @comment.commenter = current_user.email

    if @comment.save
      redirect_to article_path(@article)
     else
       flash[:notice] = "Can't be blank"
       redirect_to article_path(@article)
     end
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

end
