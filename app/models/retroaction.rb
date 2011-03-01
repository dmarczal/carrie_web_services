class Retroaction < ActiveRecord::Base
  attr_accessible :mistake
  belongs_to :mistake
end
