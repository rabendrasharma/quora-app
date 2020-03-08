class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    # @user = User.includes(:subscribed_topics, :questions, :answers, :upvoted_answers).find(current_user.id)
    @questions = Question.where(id: QuestionTopic.where(topic_id: current_user.subscribed_topics.map(&:id)).map(&:question_id).uniq)
  end
end
