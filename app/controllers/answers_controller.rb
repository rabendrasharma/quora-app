class AnswersController < ApplicationController
  def new;end

  def create
    Answer.create(answer: params[:answer][:answer], question_id: params[:answer][:question_id], user_id: current_user.id)
    redirect_to root_path
  end
end
