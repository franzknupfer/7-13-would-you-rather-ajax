class VotesController < ApplicationController

  def create
    @question = Question.find(params[:question_id])
    @vote = @question.votes.new
    @vote.user_id = current_user.id
    selected = params[:selected]
    if selected == "option1"
      @vote.option1 = true
      @vote.vote = true
    elsif selected == "option2"
      @vote.option2 = true
      @vote.vote = true
    end
    @vote.save
    respond_to do |format|
      format.html { redirect_to questions_url}
      format.js
    end
  end
end
