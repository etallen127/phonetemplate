class User < ActiveRecord::Base
  has_secure_password
  has_many :goals
  has_many :programs
  has_many :days, through::programs
  has_many :lifts, through::days
  has_many :lclasses, through::lifts
end
