class DownvotesController < ApplicationController
  def downvote
    downvote = Downvote.find_or_initialize_by(answer_id: params[:answer_id], user_id: current_user.id)
    if downvote.save
      redirect_to root_path
    end 
  end
end
