class QuestionsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @questions = Question.includes(:user).order('created_at DESC')
    @quals = Qual.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
    @quals = Qual.all
    @user = @question.user
  end

  private
  def question_params
    params.require(:question).permit(:question_title, :question_detail, :qual_id).merge(user_id: current_user.id)
  end
end
