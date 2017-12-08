class Lift < ActiveRecord::Base
  belongs_to :day
  belongs_to :program
  belongs_to :user
  has_many :lclasses
  
  validates_uniqueness_of :name
end
