class Program < ActiveRecord::Base
  belongs_to :user
  has_many :days
  has_many :lifts, through::days
  has_many :lclasses, through::lifts
  validates_uniqueness_of :title
end
