class UpvotesController < ApplicationController
  def upvote
    upvote = Upvote.find_or_initialize_by(answer_id: params[:answer_id], user_id: current_user.id)
    if upvote.save
      redirect_to root_path
    end 
  end
end
