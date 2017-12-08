class LiftClass < ActiveRecord::Base
  belongs_to :lclass, polymorphic: true
end
