class Day < ActiveRecord::Base
  belongs_to :program
  belongs_to :user
  has_many :lifts
  has_many :lclasses, through::lifts
end
