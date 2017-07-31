class AnswersController < ApplicationController


  def show
    @answer = Answer.find(params[:id])
  end

  def new
    @answer = Answer.new
  end

  def create
    @query = Query.find(params[:query_id])
    @answer = @query.answers.new(answer_params)
    if @answer.save
      redirect_to @query
    else
      redirect_to :back
    end
  end

  def edit
    #Maybe get to this
  end

  private

  def answer_params
    params.require(:answer).permit(:body)
  end
end
