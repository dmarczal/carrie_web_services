class Mistake < ActiveRecord::Base
  attr_accessible :object, :exercise, :oa, :description, :answer, :correct_answer, :title, :user, :cell
  belongs_to :user
  has_many :retroactions

  searchable do
    text :answer, :correct_answer, :exercise, :id
    text :user_email do
      user.email
    end
    string :exercise
    string :user_email do
      user.email
    end
    time :created_at
  end
end
