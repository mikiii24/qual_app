class QuestionsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
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
    @answer = Answer.new
    @answers = @question.answers.includes(:user)
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to question_path(@question.id)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    question = Question.find(params[:id])
    if question.user == current_user
      question.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private
  def question_params
    params.require(:question).permit(:question_title, :question_detail, :qual_id).merge(user_id: current_user.id)
  end
end
