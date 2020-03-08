class Topic < ApplicationRecord
  has_many :user_topics
  has_many :subscribers, :through => "user_topics", source: "user"
  has_many :question_topics
  has_many :questions, :through => "question_topics", source: "question"
  has_many :answers, :through => :questions, :source => :answers
end
