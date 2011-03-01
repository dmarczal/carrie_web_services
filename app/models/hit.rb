class Hit < ActiveRecord::Base
  attr_accessible :exercise, :cell, :oa, :answer, :correct_answer, :user
  belongs_to :user
end
