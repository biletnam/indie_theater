class CommentsController < ApplicationController
  before_filter :authenticate_customer!, :only => [:create]
  
  def create
    @comment = Comment.new(params[:comment])
    @comment.customer_id = current_customer.id
    @comment.save
    
    if request.xhr?
      render partial: "comment", locals: {comment: @comment}
    else
      redirect_to comments_url
    end
  end
end