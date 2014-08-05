class StaticPagesController < ApplicationController
  def list
     @data=Answer.where(questionId:params[:questionId])
	 render json: @data
  end

  def create
     ans=Answer.new
	 ans.answerText = params[:answerText]
	 ans.questionId = params[:questionId]
	 ans.rating = 1
	 ans.save
	 render json: ans.id
  end
  
  def updateCommentRating
     comment = Comment.find(params[:id])
     comment.update_attributes(rating: params[:rating])
	 render json: comment.id
  end
  
  def updateQuestionRating
     question = Question.find(params[:id])
	 question.update_attributes(rating: params[:rating])
	 question.save
	 render json:question.id
  end

  def addComment
     comment = Comment.new
     comment.answerId = params[:answerId]
	 comment.commentText = params[:commentText]
	 comment.rating=1
	 comment.save
	 render json:comment.id
  end

  def getComments
     @data=Comment.where(answerId:params[:answerId])
	 render json: @data 
  end	 
end
