class Question < ApplicationRecord
  belongs_to :user
  has_many :question_topics
  has_many :topics, :through => "question_topics", source: "topic"
  has_many :answers 
end
