class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    question = Question.new(question: params[:question], user_id: current_user.id)
    if question.save!
      QuestionTopic.create(question_id: question.id, topic_id: params[:topic_id].to_i)
      redirect_to root_path
    end
  end
end
