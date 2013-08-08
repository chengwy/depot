class CommentsController < ApplicationController
  skip_before_filter :authorize
  def create
    @product = Product.find(params[:product_id])  
    @comment = @product.comments.build(params[:comment])  
    @comment.save  
  
    redirect_to @product  

  end

  def destroy
    @comment = Comment.find(params[:id])  
    @comment.destroy  
  
    redirect_to @comment.product  

  end
end
