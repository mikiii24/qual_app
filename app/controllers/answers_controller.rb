class AnswersController < ApplicationController
  def create
    Answer.create(answer_params)
  end

  private
  def answer_params
    params.require(:answer).permit(:answer_text).merge(user_id: current_user.id, question_id: params[:question_id])
  end
end
