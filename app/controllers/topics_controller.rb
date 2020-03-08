class TopicsController < ApplicationController
  before_action :authenticate_user!
  def new;end

  def create
    if params[:selected_topic].present?
      params[:selected_topic].keys.each do |topic_id|
        user_topic = UserTopic.find_or_initialize_by(topic_id: topic_id.to_i, user_id: current_user.id)
        user_topic.save
      end
      redirect_to root_path
    end
  end
end
