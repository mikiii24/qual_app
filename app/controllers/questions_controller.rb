class QuestionsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :search_genre]
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

  def search_genre
    @quals = Qual.all
    genre = params[:text]
    matching_qual = Qual.find_by(name: genre)
    if matching_qual
      @questions = Question.where(qual_id: matching_qual.id)
    end
  end

  private
  def question_params
    params.require(:question).permit(:question_title, :question_detail, :qual_id, :image).merge(user_id: current_user.id)
  end
end
