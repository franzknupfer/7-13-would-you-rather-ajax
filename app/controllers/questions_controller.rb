class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create(question_params)
      respond_to do |format|
        format.html { redirect_to questions_url}
        format.js
      end
    end

  private
  def question_params
    params.require(:question).permit(:title, :description, :option1, :option2)
  end

end
