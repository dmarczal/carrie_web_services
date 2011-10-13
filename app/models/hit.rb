class Hit < ActiveRecord::Base
  attr_accessible :exercise, :cell, :oa, :answer, :correct_answer, :user
  belongs_to :user

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
