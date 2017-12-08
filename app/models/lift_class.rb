class LiftClass < ActiveRecord::Base
  belongs_to :lclass, polymorphic: true
  validates_uniqueness_of :description
end
