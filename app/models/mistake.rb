class Mistake < ActiveRecord::Base
  attr_accessible :object, :exercise, :oa, :description, :answer, :correct_answer, :title, :user, :cell
  belongs_to :user
  has_many :retroactions
end
